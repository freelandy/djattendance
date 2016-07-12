import django_filters
from itertools import chain
from django.views.generic import TemplateView
from django.core.urlresolvers import reverse_lazy
from django.db.models import Q
from django.http import HttpResponse
from django.template import RequestContext
from django.shortcuts import get_object_or_404
from rest_framework import viewsets, filters
from rest_framework.renderers import JSONRenderer
from .models import Roll
from .serializers import RollSerializer, RollFilter, AttendanceSerializer, AttendanceFilter
from schedules.models import Schedule, Event
from leaveslips.models import IndividualSlip, GroupSlip
from terms.models import Term
from accounts.models import Trainee, TrainingAssistant
from leaveslips.models import IndividualSlip
from leaveslips.forms import IndividualSlipForm
from rest_framework_bulk import (
    BulkModelViewSet
)
from rest_framework.renderers import JSONRenderer
from django.core import serializers

from accounts.serializers import TraineeSerializer, TrainingAssistantSerializer, TraineeForAttendanceSerializer
from schedules.serializers import AttendanceEventWithDateSerializer
from leaveslips.serializers import IndividualSlipSerializer, GroupSlipSerializer
from terms.serializers import TermSerializer

from aputils.utils import trainee_from_user

class AttendancePersonal(TemplateView):
    template_name = 'attendance/attendance_react.html'
    context_object_name = 'context'

    def get_context_data(self, **kwargs):   
        listJSONRenderer = JSONRenderer()
        ctx = super(AttendancePersonal, self).get_context_data(**kwargs)
        user = self.request.user
        trainee = trainee_from_user(user)
        trainees = Trainee.objects.filter(is_active=True)
        ctx['events'] = trainee.events
        serialized_obj = serializers.serialize('json', ctx['events'])
        ctx['schedule'] = Schedule.objects.filter(trainees=trainee)
        ctx['events_bb'] = listJSONRenderer.render(AttendanceEventWithDateSerializer(ctx['events'], many=True).data)
        ctx['trainee'] = trainee
        ctx['trainee_bb'] = listJSONRenderer.render(TraineeForAttendanceSerializer(ctx['trainee']).data)
        ctx['trainees'] = trainees
        ctx['trainees_bb'] = listJSONRenderer.render(TraineeForAttendanceSerializer(ctx['trainees'], many=True).data)
        ctx['rolls'] = Roll.objects.filter(trainee=trainee)
        ctx['rolls_bb'] = listJSONRenderer.render(RollSerializer(ctx['rolls'], many=True).data)
        ctx['leaveslipform'] = IndividualSlipForm()
        ctx['individualslips'] = IndividualSlip.objects.filter(trainee=trainee)
        ctx['individualslips_bb'] = listJSONRenderer.render(IndividualSlipSerializer(ctx['individualslips'], many=True).data)
        ctx['groupslips'] = GroupSlip.objects.filter(Q(trainee=trainee) | Q(trainees=trainee)).distinct()
        ctx['groupslips_bb'] = listJSONRenderer.render(GroupSlipSerializer(ctx['groupslips'], many=True).data)
        ctx['TAs'] = TrainingAssistant.objects.all()
        ctx['TAs_bb'] = listJSONRenderer.render(TrainingAssistantSerializer(ctx['TAs'], many=True).data)
        ctx['term'] = Term.objects.filter(current=True)
        ctx['term_bb'] = listJSONRenderer.render(TermSerializer(ctx['term'], many=True).data)
        return ctx

class RollViewSet(BulkModelViewSet):
    queryset = Roll.objects.all()
    serializer_class = RollSerializer
    filter_backends = (filters.DjangoFilterBackend,)
    filter_class = RollFilter
    def get_queryset(self):
        user = self.request.user
        trainee = trainee_from_user(user)
        roll = trainee.current_rolls
        return roll
    def allow_bulk_destroy(self, qs, filtered):
        return filtered
        
        # failsafe- to only delete if qs is filtered.
        # return not all(x in filtered for x in qs)

class AttendanceViewSet(BulkModelViewSet):
    queryset = Trainee.objects.filter(is_active=True)
    serializer_class = AttendanceSerializer
    filter_backends = (filters.DjangoFilterBackend,)
    # filter_class = AttendanceFilter
    def get_queryset(self):
        user = self.request.user
        trainee = trainee_from_user(user)
        return trainee
    def allow_bulk_destroy(self, qs, filtered):
        return not all(x in filtered for x in qs)

class AllRollViewSet(BulkModelViewSet):
    queryset = Roll.objects.all()
    serializer_class = RollSerializer
    filter_backends = (filters.DjangoFilterBackend,)
    filter_class = RollFilter
    def allow_bulk_destroy(self, qs, filtered):
        return not all(x in filtered for x in qs)

class AllAttendanceViewSet(BulkModelViewSet):
    queryset = Trainee.objects.filter(is_active=True)
    serializer_class = AttendanceSerializer
    filter_backends = (filters.DjangoFilterBackend,)
    # filter_class = AttendanceFilter
    def allow_bulk_destroy(self, qs, filtered):
        return not all(x in filtered for x in qs)
