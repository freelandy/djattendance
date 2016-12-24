from django.contrib import messages
from django.core import serializers
from django.shortcuts import redirect, get_object_or_404, render
from django.views import generic
from django.http import HttpResponse
from accounts.models import Trainee
from .forms import WebAccessRequestCreateForm, WebAccessRequestTACommentForm, WebAccessRequestGuestCreateForm, DirectWebAccess, EShepherdingRequest
from .models import WebRequest
from aputils.trainee_utils import trainee_from_user, is_TA, is_trainee
from aputils.groups_required_decorator import group_required
from braces.views import GroupRequiredMixin
from . import utils
from rest_framework.renderers import JSONRenderer
from django.template import Context, RequestContext
from accounts.serializers import TraineeSerializer, BasicUserSerializer


class WebAccessCreate(generic.CreateView):
    model = WebRequest
    template_name = 'web_access/web_access_create.html'
    form_class = WebAccessRequestCreateForm

    def form_valid(self, form):
        req = form.save(commit=False)
        req.trainee = trainee_from_user(self.request.user)
        req.save()
        message = "Created new web request."
        messages.add_message(self.request, messages.SUCCESS, message)
        return super(WebAccessCreate, self).form_valid(form)


class WebAccessUpdate(generic.UpdateView):

    model = WebRequest
    template_name = 'web_access/web_access_update.html'
    form_class = WebAccessRequestCreateForm


class WebAccessDelete(generic.DeleteView):

    model = WebRequest


class WebAccessDetail(generic.DetailView):

    model = WebRequest
    template_name = 'web_access/web_access_detail.html'
    context_object_name = 'web_access'


class WebRequestList(generic.ListView):

    model = WebRequest
    template_name = 'web_access/webrequest_list.html'

    def get_queryset(self):
        trainee = trainee_from_user(self.request.user)
        if is_TA(self.request.user):
            return WebRequest.objects.filter().order_by('status')
        else:
            return WebRequest.objects.filter(trainee=trainee).order_by('status')

    def get_template_names(self):
        if is_TA(self.request.user):
            return ['web_access/ta_webrequest_list.html']
        else:
            return ['web_access/webrequest_list.html']

class TAWebAccessUpdate(GroupRequiredMixin, generic.UpdateView):
    model = WebRequest
    template_name = 'web_access/ta_web_access_update.html'
    form_class = WebAccessRequestTACommentForm
    context_object_name = 'web_access'
    group_required = ['administration']
    raise_exception = True

@group_required(('administration',), raise_exception=True)
def modify_status(request, status, id):
    """ Changes status of web access request """
    webRequest = get_object_or_404(WebRequest, pk=id)
    webRequest.status = status
    webRequest.save()
    webRequest = get_object_or_404(WebRequest, pk=id)
    if webRequest.trainee is None:
        name = webRequest.guest_name
    else:
        name = webRequest.trainee
    message = "%s's %s web request was " % (name, webRequest.get_reason_display())
    if status == 'A':
        message += 'approved.'
    if status == 'D':
        message += 'denied.'
    if status == 'F':
        message += 'marked for fellowship.'
    messages.add_message(request, messages.SUCCESS, message)

    return redirect('web_access:web_access-list')


def getGuestRequests(request):
    """ Returns list of requests identified by MAC address """
    mac = utils._getMAC(utils._getIPAddress(request))
    requests = WebRequest.objects.all().filter(trainee=None, mac_address=mac).order_by('status')
    print mac
    html = render(request, 'web_access/requests_panel.html', context={'guest_access_requests': requests})
    return HttpResponse(html)

def eShepherdingRequest(request):
    form = EShepherdingRequest(request.POST)
    listJSONRenderer = JSONRenderer()
    l_render = listJSONRenderer.render

    trainees = Trainee.objects.filter(is_active=True)

    #contextWR = RequestContext(request, {'trainees_bb':l_render(BasicUserSerializer(trainees, many=True).data)})
    if request.method == 'POST':
        if form.is_valid():
            ip_addr = utils._getIPAddress(request)
            mac = utils._getMAC(utils._getIPAddress(request))
            if mac != None:
                message = "E-Shepherding Request approved, Your internet should work now for the next thirty minutes."
                messages.add_message(request, messages.SUCCESS, message)
                utils.startAccessFromMacAddress(request,'30',mac)
            else:
                message = "Mac address location failed."
                messages.add_message(request, messages.ERROR, message)
            return redirect('web_access:eshepherding-access')
    else:
        form = EShepherdingRequest()
    return render(request, 'web_access/eshepherding_access.html', {'form': form,'trainees_bb':l_render(BasicUserSerializer(trainees, many=True).data)})

def createGuestWebAccess(request):
    if request.method == 'POST':
        mac = utils._getMAC(utils._getIPAddress(request))
        form = WebAccessRequestGuestCreateForm(request.POST)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.mac_address = mac
            instance.save()
        return HttpResponse('Submitted!')
    else:
        return HttpResponse('Error: This is a private endpoint, only accept post')


def deleteGuestWebAccess(request, id):
    WebRequest.objects.filter(id=id).delete()
    return getGuestRequests(request)    

@group_required(('administration', 'networks'), raise_exception=True)
def directWebAccess(request):
    if request.method == 'POST':
        form = DirectWebAccess(request.POST)
        if form.is_valid():
            utils.startAccessFromMacAddress(
                request,
                form.cleaned_data.get('minutes'),
                form.cleaned_data.get('mac_address')
            )
            return redirect('web_access:direct-web-access')
    else:
        form = DirectWebAccess()

    return render(request, 'web_access/direct_web_access.html', {'form': form})
