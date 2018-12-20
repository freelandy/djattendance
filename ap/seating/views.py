from accounts.models import Trainee
from accounts.serializers import TraineeRollSerializer
from django.shortcuts import redirect
from django.urls import reverse
from django.views import generic
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import viewsets
from rest_framework.renderers import JSONRenderer
from terms.models import Term

from .models import Chart, Partial, Seat
from .serializers import (ChartSerializer, PartialFilter, PartialSerializer,
                          SeatSerializer)


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
    context['trainees_bb'] = l_render(TraineeRollSerializer(trainees, many=True).data).decode('utf-8')

    return context


def cloneChart(request, pk):
  chart_id = pk
  chart = Chart.objects.get(id=chart_id)
  chart.name = Chart.objects.get(id=chart_id).name + "clone"
  partitions = Partial.objects.filter(chart=chart)
  seats = Seat.objects.filter(chart=chart)
  chart.id = None
  chart.save()
  new_seat_arr = []
  for seat in seats:
    new_seat_arr.append(Seat(trainee=seat.trainee, chart=chart, x=seat.x, y=seat.y))
  new_partition_arr = []
  for partition in partitions:
    new_partition_arr.append(Partial(chart=chart, section_name=partition.section_name,
                             x_lower=partition.x_lower, x_upper=partition.x_upper,
                             y_lower=partition.y_lower, y_upper=partition.y_upper))
  Seat.objects.bulk_create(new_seat_arr)
  Partial.objects.bulk_create(new_partition_arr)

  return redirect(reverse('seating:chart_edit', kwargs={'pk': str(chart.id)}))


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
    context['trainees_bb'] = l_render(TraineeRollSerializer(trainees, many=True).data).decode('utf-8')

    chart = Chart.objects.get(pk=self.pk)
    context['chart'] = chart
    context['chart_bb'] = l_render(ChartSerializer(chart).data).decode('utf-8')
    context['chart_id'] = self.pk

    seats = Seat.objects.filter(chart=chart)
    context['seats'] = seats
    context['seats_bb'] = l_render(SeatSerializer(seats, many=True).data).decode('utf-8')

    partials = Partial.objects.filter(chart=chart)
    context['partial'] = partials
    context['partial_bb'] = l_render(PartialSerializer(partials, many=True).data).decode('utf-8')

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
  filter_backends = (DjangoFilterBackend,)
  filter_class = PartialFilter

  def allow_bulk_destroy(self, qs, filtered):
    return not all(x in filtered for x in qs)
