import datetime
from itertools import chain

from ap.forms import TraineeSelectForm
from aputils.trainee_utils import is_TA
from aputils.utils import modify_model_status
from braces.views import GroupRequiredMixin
from django.core.urlresolvers import reverse_lazy
from django.shortcuts import get_object_or_404, redirect
from django.views import generic
from terms.models import Term

from .forms import AnnouncementDayForm, AnnouncementForm
from .models import Announcement


class AnnouncementRequest(generic.edit.CreateView):
  model = Announcement
  template_name = 'announcement_form.html'
  form_class = AnnouncementForm

  def get_form_kwargs(self):
    kwargs = super(AnnouncementRequest, self).get_form_kwargs()
    kwargs['user'] = self.request.user
    return kwargs

  def get_context_data(self, **kwargs):
    context = super(AnnouncementRequest, self).get_context_data(**kwargs)
    context['trainee_select_form'] = TraineeSelectForm()
    return context

  def form_valid(self, form):
    req = form.save(commit=False)
    req.author = self.request.user
    req.save()
    form.save_m2m()
    return super(AnnouncementRequest, self).form_valid(form)


class AnnouncementRequestList(generic.TemplateView):
  model = Announcement
  template_name = 'announcement_list/list.html'

  def get_context_data(self, **kwargs):
    ctx = super(AnnouncementRequestList, self).get_context_data(**kwargs)
    anns = self.model.objects.none()
    if is_TA(self.request.user):
      for status in ['P', 'F', 'D', 'A']:
        anns = chain(anns, self.model.objects.filter(status=status).filter(date_requested__gte=Term.current_term().get_date(0, 0)).order_by('date_requested'))
      ctx['announcements'] = anns
    else:
      trainee = self.request.user
      for status in ['P', 'F', 'D', 'A']:
        anns = chain(anns, self.model.objects.filter(status=status, author=trainee).filter(date_requested__gte=Term.current_term().get_date(0, 0)).order_by('date_requested'))
        ctx['announcements'] = anns
    return ctx

  def get_queryset(self):
    if is_TA(self.request.user):
      qs = self.model.objects.filter(status__in=['P', 'F']).filter(date_requested__gte=Term.current_term().get_date(0, 0)) | self.model.objects.filter(status='F').filter(date_requested__gte=Term.current_term().get_date(0, 0))
      return qs.order_by('date_requested')
    else:
      trainee = self.request.user
      return self.model.objects.filter(trainee_author=trainee).filter(date_requested__gte=Term.current_term().get_date(0, 0)).order_by('status')


class AnnouncementDetail(generic.DetailView):
  model = Announcement
  template_name = 'requests/detail_request.html'
  context_object_name = 'announcement'


class AnnouncementDelete(generic.DeleteView):
  model = Announcement
  success_url = reverse_lazy('announcements:announcement-request-list')


class AnnouncementUpdate(generic.UpdateView):
  model = Announcement
  template_name = 'announcement_form.html'
  form_class = AnnouncementForm

  def get_form_kwargs(self):
    kwargs = super(AnnouncementUpdate, self).get_form_kwargs()
    kwargs['user'] = self.request.user
    return kwargs

  def get_context_data(self, **kwargs):
    context = super(AnnouncementUpdate, self).get_context_data(**kwargs)
    context['trainee_select_form'] = TraineeSelectForm()
    return context


class AnnouncementList(GroupRequiredMixin, generic.ListView):
  model = Announcement
  template_name = 'announcements_day.html'
  group_required = ['training_assistant']

  def dispatch(self, request, *args, **kwargs):
    date_string = self.kwargs.get('date', None)
    if not date_string:
      date = datetime.date.today()
    else:
      date = datetime.datetime.strptime(date_string, "%m-%d-%Y").date()
    self.date = date
    return super(AnnouncementList, self).dispatch(request, *args, **kwargs)

  def get_context_data(self, **kwargs):
    context = super(AnnouncementList, self).get_context_data(**kwargs)
    context['date'] = self.date
    context['form'] = AnnouncementDayForm()
    return context

  def get_queryset(self):
    announcements = Announcement.objects.filter(type='CLASS', status='A', announcement_date=self.date)
    # Includes 'On TV Page' announcements for the day
    announcements |= Announcement.objects.filter(type='TV', status='A', announcement_date__lte=self.date, announcement_end_date__gte=self.date)
    return announcements


class AnnouncementsRead(generic.ListView):
  model = Announcement
  template_name = 'announcements_read.html'

  def get_queryset(self):
    trainee = self.request.user
    announcements = Announcement.objects.filter(trainees_read=trainee)
    announcements |= Announcement.objects.filter(is_popup=False, trainees_show=trainee)
    announcements |= Announcement.objects.filter(type='SERVE', is_popup=False, all_trainees=True)
    return announcements


modify_status = modify_model_status(Announcement, reverse_lazy('announcements:announcement-request-list'))


def mark_read(request, id):
  announcement = get_object_or_404(Announcement, pk=id)
  trainee = request.user
  announcement.trainees_show.remove(trainee.id)
  announcement.trainees_read.add(trainee.id)
  announcement.save()
  return redirect('home')
