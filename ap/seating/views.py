import django_filters
from django.views.generic import TemplateView, DetailView, ListView
from django.views import generic
from .models import Chart, Seat, Partial
from terms.models import Term
from accounts.models import Trainee
from .serializers import ChartSerializer, SeatSerializer, PartialSerializer, PartialFilter
from accounts.serializers import TraineeSerializer, BasicUserSerializer

from rest_framework import viewsets, filters
from rest_framework.renderers import JSONRenderer
from rest_framework_bulk import BulkModelViewSet

class ChartListView(generic.ListView):
    model = Chart
    template_name = 'seating/chart_list.html'

    def get_queryset(self):
         return Chart.objects.filter(term=Term.current_term())

class ChartCreateView(generic.ListView):
    model = Chart
    template_name = 'seating/chart_create.html'

    context_object_name = 'context'

    def get_context_data(self, **kwargs):
        listJSONRenderer = JSONRenderer()
        l_render = listJSONRenderer.render

        trainees = Trainee.objects.filter(is_active=True)

        context = super(ChartCreateView, self).get_context_data(**kwargs)
        context['trainees'] = trainees
        context['trainees_bb'] = l_render(BasicUserSerializer(trainees, many=True).data)

        return context

    # def get_queryset(self):

class ChartEditView(generic.DetailView):
    model = Chart
    template_name = 'seating/chart_edit.html'

    context_object_name = 'context'

    def get_context_data(self, **kwargs):
        listJSONRenderer = JSONRenderer()
        l_render = listJSONRenderer.render

        trainees = Trainee.objects.filter(is_active=True)

        context = super(ChartEditView, self).get_context_data(**kwargs)
        context['trainees'] = trainees
        context['trainees_bb'] = l_render(BasicUserSerializer(trainees, many=True).data)

        chart = Chart.objects.filter(pk=self.pk)
        context['chart'] = chart.get()
        context['chart_bb'] = l_render(ChartSerializer(chart, many=True).data)
        context['chart_id'] = self.pk

        seats = Seat.objects.filter(chart=chart)
        context['seats'] = seats
        context['seats_bb'] = l_render(SeatSerializer(seats, many=True).data)

        partials = Partial.objects.filter(chart=chart)
        context['partial'] = partials
        context['partial_bb'] = l_render(PartialSerializer(partials, many=True).data)

        return context

    def get_queryset(self):
        self.pk = self.kwargs['pk']
        queryset = super(ChartEditView, self).get_queryset()
        return queryset


class ChartViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows charts to be viewed or edited.
    """
    queryset = Chart.objects.all()
    serializer_class = ChartSerializer

class SeatViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows seats to be viewed or edited.
    """
    queryset = Seat.objects.all()
    serializer_class = SeatSerializer

class PartialViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows partitions to be viewed or edited.
    """
    queryset = Partial.objects.all()
    serializer_class = PartialSerializer
    filter_backends = (filters.DjangoFilterBackend,)
    filter_class = PartialFilter
    def allow_bulk_destroy(self, qs, filtered):
        return not all(x in filtered for x in qs)