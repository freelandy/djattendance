from datetime import datetime

import dateutil.parser
import django_filters
from django.db import IntegrityError
from django.db.models import Count
from rest_framework import filters, serializers
from rest_framework.serializers import ModelSerializer
from rest_framework_bulk import BulkListSerializer, BulkSerializerMixin

from accounts.models import TrainingAssistant
from schedules.models import Event
from schedules.serializers import EventWithDateSerializer, localized_time_iso
from terms.models import Term

from .models import GroupSlip, IndividualSlip, Roll

COMMON_FIELDS = ('id', 'type', 'status', 'ta_sister_approved', 'TA', 'TA_informed', 'informed', 'trainee', 'submitted', 'finalized', 'description', 'comments', 'texted', 'classname', 'periods', 'late')
INDIVIDUAL_FIELDS = COMMON_FIELDS + ('location', 'host_name', 'host_phone', 'hc_notified', 'events')
GROUP_FIELDS = COMMON_FIELDS + ('start', 'end', 'trainees', 'service_assignment', 'trainee_list')
CURRENT_TERM = Term.current_term()


class IndividualSlipSerializer(BulkSerializerMixin, ModelSerializer):
  events = EventWithDateSerializer(many=True,)

  class Meta(object):
    model = IndividualSlip
    list_serializer_class = BulkListSerializer
    fields = INDIVIDUAL_FIELDS

  def to_internal_value(self, data):
    internal_value = super(IndividualSlipSerializer, self).to_internal_value(data)
    events = data.get('events')
    internal_value.update({
        'events': events
    })
    return internal_value

  def update(self, instance, validated_data):
    events = validated_data.get('events', [e.__dict__ for e in instance.events])
    to_delete = Roll.objects.filter(id__in=instance.rolls.all(), status="P").annotate(slip_count=Count('leaveslips')).filter(slip_count__lt=2)
    # delete, then clear
    to_delete.delete()
    instance.rolls.clear()
    # TODO: Get all rolls and events in one go to save on db trips (optimization)
    for event in events:
      roll = Roll.objects.filter(event=event['id'], date=event['date'], trainee=instance.trainee)
      if roll:
        try:
          instance.rolls.add(roll[0])
        except IntegrityError:  # roll already attached to leave slip
          pass
      else:
        roll_dict = {'trainee': instance.trainee, 'event': Event.objects.get(id=event['id']), 'status': 'P', 'submitted_by': instance.trainee, 'date': event['date']}
        newroll = Roll.update_or_create(roll_dict)
        instance.rolls.add(newroll)

    try:
      # TA detail view posts TA id instead of TA objects like react
      if isinstance(validated_data.get('TA'), basestring):
        TA_id = validated_data.get('TA')
      else:
        TA_id = validated_data.get('TA', instance).id
      instance.TA = TrainingAssistant.objects.get(id=TA_id)

      if validated_data.get('TA_informed') is None:
        TA_informed_id = None
      elif isinstance(validated_data.get('TA_informed'), basestring):
        TA_informed_id = validated_data.get('TA_informed')
      else:
        TA_informed_id = validated_data.get('TA_informed', instance).id
      instance.TA_informed = TrainingAssistant.objects.get(id=TA_informed_id) if TA_informed_id else None
    except TrainingAssistant.DoesNotExist:
      # id POSTed does not match to a TA, don't update instance.TA
      pass

    instance.type = validated_data.get('type', instance.type)
    instance.status = validated_data.get('status', instance.status)
    instance.ta_sister_approved = validated_data.get('ta_sister_approved', instance.ta_sister_approved)
    instance.submitted = validated_data.get('submitted', instance.submitted)
    instance.last_modified = validated_data.get('last_modified', instance.last_modified)
    instance.finalized = validated_data.get('finalized', instance.finalized)
    instance.description = validated_data.get('description', instance.description)
    instance.comments = validated_data.get('comments', instance.comments)
    instance.private_TA_comments = validated_data.get('private_TA_comments', instance.private_TA_comments)
    instance.texted = validated_data.get('texted', instance.texted)
    instance.informed = validated_data.get('informed', instance.informed)
    instance.location = validated_data.get('location', instance.location)
    instance.host_name = validated_data.get('host_name', instance.host_name)
    instance.host_phone = validated_data.get('host_phone', instance.host_phone)
    instance.hc_notified = validated_data.get('hc_notified', instance.hc_notified)
    instance.save()
    return instance

  def create(self, validated_data):
    start_date = CURRENT_TERM.start
    end_date = CURRENT_TERM.end
    trainee = validated_data['trainee']
    events = validated_data.pop('events')

    slip = IndividualSlip.objects.create(**validated_data)

    rolls = Roll.objects.filter(trainee=trainee).filter(date__gte=start_date, date__lte=end_date)

    ev_db = {}

    for roll in rolls:
      ev_db[(roll.date, roll.event.id)] = roll

    # create rolls for given days and events
    for ev in events:
      date = datetime.strptime(ev['date'], "%Y-%m-%d").date()
      key = (date, int(ev['id']))
      if key not in ev_db:
        # create roll
        # Create dummy roll if it doesn't exist
        event_object = Event.objects.get(id=ev['id'])
        roll_dict = {'trainee': trainee, 'event': event_object, 'status': 'P', 'submitted_by': trainee, 'date': date}
        newroll = Roll.update_or_create(roll_dict)

        # Add rolls to the leave slip's rolls
        if newroll:
          slip.rolls.add(newroll)
      else:
        slip.rolls.add(ev_db[key])

    return slip


class IndividualSlipTADetailSerializer(IndividualSlipSerializer):
  class Meta(object):
    model = IndividualSlip
    list_serializer_class = BulkListSerializer
    fields = ('status', 'events')


class IndividualSlipFilter(filters.FilterSet):
  submitted__lt = django_filters.DateTimeFilter(name='submitted', lookup_expr='lt')
  submitted__gt = django_filters.DateTimeFilter(name='submitted', lookup_expr='gt')
  last_modified__lt = django_filters.DateTimeFilter(name='last_modified', lookup_expr='lt')
  last_modified__gt = django_filters.DateTimeFilter(name='last_modified', lookup_expr='gt')
  finalized__lt = django_filters.DateTimeFilter(name='finalized', lookup_expr='lt')
  finalized__gt = django_filters.DateTimeFilter(name='finalized', lookup_expr='gt')

  class Meta:
    model = IndividualSlip
    fields = ['id', 'type', 'status', 'submitted', 'last_modified', 'finalized', 'description', 'comments', 'texted', 'TA', 'TA_informed', 'informed', 'trainee', 'rolls']


class GroupSlipSerializer(BulkSerializerMixin, ModelSerializer):
  start = serializers.SerializerMethodField()
  end = serializers.SerializerMethodField()

  def get_start(self, obj):
    return localized_time_iso(obj.start)

  def get_end(self, obj):
    return localized_time_iso(obj.end)

  def to_internal_value(self, data):
    internal_value = super(GroupSlipSerializer, self).to_internal_value(data)
    internal_value['start'] = dateutil.parser.parse(data['start']).replace(tzinfo=None)
    internal_value['end'] = dateutil.parser.parse(data['end']).replace(tzinfo=None)
    return internal_value

  class Meta(object):
    model = GroupSlip
    list_serializer_class = BulkListSerializer
    fields = GROUP_FIELDS


class GroupSlipTADetailSerializer(GroupSlipSerializer):
  class Meta(object):
    model = GroupSlip
    list_serializer_class = BulkListSerializer
    fields = ('status', 'start', 'end')


class GroupSlipFilter(filters.FilterSet):
  id__gt = django_filters.NumberFilter(name='id', lookup_expr='gt')
  id__lt = django_filters.NumberFilter(name='id', lookup_expr='lt')
  submitted__lt = django_filters.DateTimeFilter(name='submitted', lookup_expr='lt')
  submitted__gt = django_filters.DateTimeFilter(name='submitted', lookup_expr='gt')
  last_modified__lt = django_filters.DateTimeFilter(name='last_modified', lookup_expr='lt')
  last_modified__gt = django_filters.DateTimeFilter(name='last_modified', lookup_expr='gt')
  finalized__lt = django_filters.DateTimeFilter(name='finalized', lookup_expr='lt')
  finalized__gt = django_filters.DateTimeFilter(name='finalized', lookup_expr='gt')

  class Meta:
    model = GroupSlip
    fields = ['id', 'type', 'status', 'submitted', 'last_modified', 'finalized', 'description', 'comments', 'texted', 'TA_informed', 'TA', 'informed', 'trainee', 'trainees']
