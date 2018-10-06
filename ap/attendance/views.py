import json
from copy import copy, deepcopy
from collections import OrderedDict
from datetime import date, datetime, time, timedelta
import dateutil.parser

from braces.views import GroupRequiredMixin
from django.contrib.auth.models import Group
from django.core.urlresolvers import resolve, reverse_lazy
from django.db.models import Q
from django.forms.forms import NON_FIELD_ERRORS
from django.forms.utils import ErrorList
from django.http import HttpResponse, HttpResponseBadRequest, JsonResponse
from django.shortcuts import get_object_or_404, redirect
from django.views.generic.base import TemplateView
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from rest_framework import filters, status
from rest_framework.renderers import JSONRenderer
from rest_framework_bulk import BulkModelViewSet
from rest_framework.response import Response

from accounts.models import Trainee, TrainingAssistant
from accounts.serializers import (TraineeForAttendanceSerializer,
                                  TraineeRollSerializer,
                                  TrainingAssistantSerializer)

from ap.forms import TraineeSelectForm
from aputils.decorators import group_required
from aputils.eventutils import EventUtils
from aputils.trainee_utils import is_trainee, trainee_from_user
from houses.models import House
from leaveslips.models import GroupSlip, IndividualSlip
from leaveslips.serializers import (GroupSlipSerializer,
                                    GroupSlipTADetailSerializer,
                                    IndividualSlipSerializer,
                                    IndividualSlipTADetailSerializer)
from schedules.constants import WEEKDAYS
from schedules.models import Event, Schedule
from schedules.serializers import (AttendanceEventWithDateSerializer,
                                   EventWithDateSerializer)
from seating.models import Chart, Partial, Seat
from seating.serializers import (ChartSerializer, PartialSerializer,
                                 SeatSerializer)
from teams.models import Team
from terms.models import Term
from terms.serializers import TermSerializer

from .forms import RollAdminForm, SelfAttendanceForm
from .models import Roll, RollsFinalization, SelfAttendancePool
from .serializers import AttendanceSerializer, RollFilter, RollSerializer, RollsFinalizationSerializer

# universal variable for this term
CURRENT_TERM = Term.current_term()


# this function feeds the context data needed for rendering attendance in react
# it splits up into two case and two subcase for one of them
# start by initializing all common things, goal of this sequence and embdded if statements is to reduce database calls
# first case is that this is being used to render a detail leaveslips view, either individual or group
# if it's individual, then we'll only put data for the individual events and individual slip along with the associated rolls
# if it's group, then we'll only put data for group events and group leaveslips,
# second case is that this is being used to render the personal attendance for trainee/ta
# so we render everything, rolls, individual events, individual leaveslips, group events, group leaveslips
def react_attendance_context(trainee, request_params=None):
  listJSONRenderer = JSONRenderer()

  finalize_obj = RollsFinalization.objects.none()
  rolls = Roll.objects.none()
  individualslips = IndividualSlip.objects.none()
  events = Event.objects.none()

  groupslips = GroupSlip.objects.none()
  groupevents = Event.objects.none()

  if request_params:
    period = request_params['period']
    weeks = [period * 2, period * 2 + 1]
    # start_date = CURRENT_TERM.startdate_of_period(period)
    # end_date = CURRENT_TERM.enddate_of_period(period)
    disablePeriodSelect = 1

    if request_params['leaveslip_type'] == 'individual':
      individualslips = IndividualSlip.objects.filter(pk=request_params['object_id'])
      rolls = individualslips[0].rolls.all()
      if trainee.self_attendance:
        rolls = rolls.filter(submitted_by=trainee)

      period_events = []
      start = datetime.combine(CURRENT_TERM.startdate_of_week(weeks[0]), time())
      end = datetime.combine(CURRENT_TERM.enddate_of_week(weeks[-1] + 1), time())
      for ev in trainee.events:
        if ev.start_datetime >= start and ev.end_datetime <= end:
          period_events.append(ev)
      events = period_events

    elif request_params['leaveslip_type'] == 'group':
      groupslips = GroupSlip.objects.filter(pk=request_params['object_id']).prefetch_related('trainees')
      groupevents = trainee.groupevents_in_week_list(weeks)

    events_serializer = EventWithDateSerializer
    individual_serializer = IndividualSlipTADetailSerializer
    group_serializer = GroupSlipTADetailSerializer
    trainees_bb = {}
    TAs_bb = {}
    trainee_select_form = None

  else:
    weeks = None
    disablePeriodSelect = 0

    rolls = trainee.current_rolls
    events = trainee.events
    individualslips = IndividualSlip.objects.filter(trainee=trainee)

    groupevents = trainee.groupevents
    groupslips = GroupSlip.objects.filter(Q(trainees__in=[trainee])).distinct()

    events_serializer = AttendanceEventWithDateSerializer
    individual_serializer = IndividualSlipSerializer
    group_serializer = GroupSlipSerializer
    trainees = Trainee.objects.all().prefetch_related('groups')
    trainees_bb = listJSONRenderer.render(TraineeForAttendanceSerializer(trainees, many=True).data)
    TAs = TrainingAssistant.objects.filter(groups__name='regular_training_assistant')
    TAs_bb = listJSONRenderer.render(TrainingAssistantSerializer(TAs, many=True).data)
    trainee_select_form = TraineeSelectForm()

  events_bb = listJSONRenderer.render(events_serializer(events, many=True).data)
  groupevents_bb = listJSONRenderer.render(events_serializer(groupevents, many=True).data)

  individualslips_bb = listJSONRenderer.render(individual_serializer(individualslips, many=True).data)
  groupslips_bb = listJSONRenderer.render(group_serializer(groupslips, many=True).data)

  trainee_bb = listJSONRenderer.render(TraineeForAttendanceSerializer(trainee).data)
  rolls_bb = listJSONRenderer.render(RollSerializer(rolls, many=True).data)
  term_bb = listJSONRenderer.render(TermSerializer([CURRENT_TERM], many=True).data)

  if trainee.self_attendance:
    finalize_obj = RollsFinalization.objects.get_or_create(trainee=trainee, events_type='EV')[0]
  finalize_bb = listJSONRenderer.render(RollsFinalizationSerializer(finalize_obj).data)

  am_groups = Group.objects.filter(name__in=['attendance_monitors', 'training_assistant'])
  groups = [g['id'] for g in am_groups.values('id')]
  ctx = {
      'events_bb': events_bb,
      'groupevents_bb': groupevents_bb,
      'trainee_bb': trainee_bb,
      'trainees_bb': trainees_bb,
      'rolls_bb': rolls_bb,
      'individualslips_bb': individualslips_bb,
      'groupslips_bb': groupslips_bb,
      'TAs_bb': TAs_bb,
      'term_bb': term_bb,
      'trainee_select_form': trainee_select_form,
      'disablePeriodSelect': disablePeriodSelect,
      'finalize_bb': finalize_bb,
      'am_groups': json.dumps(groups),
  }
  return ctx


class AttendanceView(TemplateView):
  def get_context_data(self, **kwargs):
    ctx = super(AttendanceView, self).get_context_data(**kwargs)
    current_url = resolve(self.request.path_info).url_name
    ctx['current_url'] = current_url
    return ctx


class AttendancePersonal(AttendanceView):
  template_name = 'attendance/attendance_react.html'

  def get_context_data(self, **kwargs):
    ctx = super(AttendancePersonal, self).get_context_data(**kwargs)
    listJSONRenderer = JSONRenderer()
    user = self.request.user
    trainee = trainee_from_user(user)
    if not trainee:
      trainee = Trainee.objects.filter(groups__name='attendance_monitors').first()
      ctx['actual_user'] = listJSONRenderer.render(TraineeForAttendanceSerializer(self.request.user).data)
    ctx.update(react_attendance_context(trainee))
    return ctx


# View for Class/Seat Chart Based Rolls
class RollsView(GroupRequiredMixin, AttendanceView):
  template_name = 'attendance/roll_class.html'
  context_object_name = 'context'
  group_required = [u'attendance_monitors', u'training_assistant']

  # TODO enforce DRY principle, currently used for robustness

  def get(self, request, *args, **kwargs):
    if not is_trainee(self.request.user):
      return redirect('home')

    context = self.get_context_data()
    return super(RollsView, self).render_to_response(context)

  def post(self, request, *args, **kwargs):

    context = self.get_context_data()
    return super(RollsView, self).render_to_response(context)

  def get_context_data(self, **kwargs):
    lJRender = JSONRenderer().render
    ctx = super(RollsView, self).get_context_data(**kwargs)
    user = self.request.user
    trainee = trainee_from_user(user)

    if self.request.method == 'POST':
      selected_week = self.request.POST.get('week')
      event_id = self.request.POST.get('events')
      event = Event.objects.get(id=event_id)
      selected_date = event.date_for_week(int(selected_week))
      event.date = selected_date
      event.start_datetime = datetime.combine(event.date, event.start)
      event.end_datetime = datetime.combine(event.date, event.end)
    else:
      selected_date = date.today()
      selected_week = Event.week_from_date(selected_date)
      # try;
      events = trainee.immediate_upcoming_event(with_seating_chart=True)
      # TODO: - if trainee has no current event load other class that is occuring at the same time
      if len(events) > 0:
        event = events[0]
      else:
        event = None

    selected_week = int(selected_week)

    if event:
      chart = Chart.objects.filter(event=event).first()
      if chart:
        seats = Seat.objects.filter(chart=chart).select_related('trainee')
        partial = Partial.objects.filter(chart=chart).order_by('section_name')
        # Get roll with with for current event and today's date
        roll = Roll.objects.filter(event=event, date=selected_date)
        # TODO - Add group leave slips
        individualslips = IndividualSlip.objects.filter(rolls__in=roll, status='A')
        trainees = Trainee.objects.filter(schedules__events=event)
        schedules = Schedule.get_all_schedules_in_weeks_for_trainees([selected_week, ], trainees)

        w_tb = EventUtils.collapse_priority_event_trainee_table([selected_week, ], schedules, trainees)

        t_set = EventUtils.get_trainees_attending_event_in_week(w_tb, event, selected_week)

        for s in seats:
          if s.trainee in t_set:
            s.attending = True
          else:
            s.attending = False

        start_datetime = datetime.combine(selected_date, event.start)
        end_datetime = datetime.combine(selected_date, event.end)
        group_slip = GroupSlip.objects.filter(end__gte=start_datetime, start__lte=end_datetime, status='A').prefetch_related('trainees')
        print group_slip, start_datetime, end_datetime
        trainee_groupslip = set()
        for gs in group_slip:
          trainee_groupslip = trainee_groupslip | set(gs.trainees.all())

        ctx['event'] = event
        ctx['event_bb'] = lJRender(EventWithDateSerializer(event).data)
        ctx['attendance_bb'] = lJRender(RollSerializer(roll, many=True).data)
        ctx['individualslips_bb'] = lJRender(IndividualSlipSerializer(individualslips, many=True).data)
        ctx['trainee_groupslip_bb'] = lJRender(TraineeRollSerializer(trainee_groupslip, many=True).data)
        ctx['trainees_bb'] = lJRender(TraineeRollSerializer(trainees, many=True).data)
        ctx['chart'] = chart
        ctx['chart_bb'] = lJRender(ChartSerializer(chart, many=False).data)
        ctx['seats'] = seats
        ctx['seats_bb'] = lJRender(SeatSerializer(seats, many=True).data)
        ctx['partial'] = partial
        ctx['partial_bb'] = lJRender(PartialSerializer(partial, many=True).data)

    ctx['weekdays'] = WEEKDAYS
    ctx['date'] = selected_date
    ctx['week'] = selected_week
    ctx['day'] = selected_date.weekday()

    # ctx['leaveslips'] = chain(list(IndividualSlip.objects.filter(trainee=self.request.user.trainee).filter(events__term=CURRENT_TERM)), list(GroupSlip.objects.filter(trainee=self.request.user.trainee).filter(start__gte=CURRENT_TERM.start).filter(end__lte=CURRENT_TERM.end)))

    return ctx


# the audit functionality is to allow attendance monitors to easily audit 2nd year trainees who take their own attendancne
# two key things are recorded, mismatch frequency and absent-tardy discrepancy
# mismatch frequency is the record of how many times the trainee records are different from the AM records
# absent-tardy discrepancy is the record of how many times the attendance monitor marks the trainee absent but the trainee marks a type of tardy
class AuditRollsView(GroupRequiredMixin, TemplateView):

  template_name = 'attendance/roll_audit.html'
  context_object_name = 'context'
  group_required = [u'attendance_monitors', u'training_assistant']

  def get_context_data(self, **kwargs):
    ctx = super(AuditRollsView, self).get_context_data(**kwargs)
    ctx['current_period'] = Term.period_from_date(CURRENT_TERM, date.today())

    trainees_secondyear = Trainee.objects.filter(current_term__gt=2)
    base_info = []
    for t in trainees_secondyear.order_by('lastname'):
      base_info.append({t.id: {'gender': t.gender, 'self_attendance': t.self_attendance, 'name': t.full_name2, 'term': t.current_term}})

    ctx['base_info'] = json.dumps(base_info)

    ct = Term.current_term()
    last_period = ct.period_from_date(date.today())-1
    ctx['last_period'] = last_period if last_period > 0 else 0

    # if self.request.method == 'POST':
    #   val = self.request.POST.get('id')[10:]
    #   if self.request.POST.get('state') == 'true':
    #     Trainee.objects.filter(pk=val).update(self_attendance=True)
    #   elif self.request.POST.get('state') == 'false':
    #     Trainee.objects.filter(pk=val).update(self_attendance=False)

    ctx['title'] = 'Audit Rolls'
    return ctx

# similar to how the attendance report is generated, this is utilizing the client-server architecture to run concurrent operations
# on audit calculations
def trainee_rolls_audit(request):
  t_id = int(request.GET["traineeId"])
  trainee = Trainee.objects.get(pk=t_id)
  audit_record_base = {'mismatch': 0, 'AT_discrepancy': 0, 'details': ''}
  audit_record = deepcopy(audit_record_base)
  if trainee.self_attendance:
    ct = Term.current_term()
    this_period = ct.period_from_date(date.today())
    if this_period == 0:
      this_period += 1
    for i in range(0, this_period):
      audit_record.setdefault(str(i), deepcopy(audit_record_base))
    rolls = Roll.objects.filter(trainee=trainee, date__gte=ct.start, date__lte=ct.enddate_of_period(this_period-1))

    roll_trainee = rolls.filter(submitted_by=trainee)  # rolls taken by trainee
    roll_am = rolls.exclude(submitted_by=trainee).values('status', 'date', 'event', 'event__code').order_by('date')  # rolls taken by attendance monitor

    for r in roll_am:
      period = ct.period_from_date(r['date'])
      period_details = audit_record[str(period)]
      potential_roll = roll_trainee.filter(event=r['event'], date=r['date'])

      if not potential_roll.exists():
        period_details['mismatch'] += 1
        period_details['details'] = period_details['details']  + ("MF %d/%d %s, " % (r['date'].month, r['date'].day, r['event__code']))
      else:
        roll = potential_roll.first()
        if roll.status != r['status']:
          period_details['mismatch'] += 1
          period_details['details'] = period_details['details']  + ("MF %d/%d %s, " % (r['date'].month, r['date'].day, r['event__code']))
        if roll.status == 'A' and r['status'] in set(['T', 'U', 'L']):
          period_details['AT_discrepancy'] += 1
          period_details['details'] = period_details['details']  + ("AT %d/%d %s, " % (r['date'].month, r['date'].day, r['event__code']))

    mismatch = 0
    AT_discrepancy = 0
    details = ''
    for i in range(0, this_period):
      period_details = audit_record[str(i)]
      mismatch = mismatch + period_details['mismatch']
      AT_discrepancy = AT_discrepancy + period_details['AT_discrepancy']
      details = details + period_details['details']

    audit_record['mismatch'] = mismatch
    audit_record['AT_discrepancy'] = AT_discrepancy
    audit_record['details'] = details[:-2] #trim off last two characters, the space and extra comma

  return JsonResponse({t_id:audit_record})



class TableRollsView(GroupRequiredMixin, AttendanceView):
  template_name = 'attendance/roll_table_admin.html'
  context_object_name = 'context'
  group_required = [u'attendance_monitors', u'training_assistant']

  def set_week(self):
    selected_week = int(self.request.POST.get('week'))
    return CURRENT_TERM.startdate_of_week(selected_week)

  def post(self, request, *args, **kwargs):
    kwargs['selected_date'] = self.set_week()
    context = self.get_context_data(**kwargs)
    return super(TableRollsView, self).render_to_response(context)

  def get_context_data(self, **kwargs):
    ctx = super(TableRollsView, self).get_context_data(**kwargs)
    selected_date = kwargs['selected_date'] if 'selected_date' in kwargs.keys() else date.today()
    current_week = CURRENT_TERM.term_week_of_date(selected_date)
    start_date = CURRENT_TERM.startdate_of_week(current_week)
    end_date = CURRENT_TERM.enddate_of_week(current_week)

    event_type = kwargs['event_type']
    trainees = kwargs['trainees']
    monitor = kwargs['monitor']
    event_list, trainee_evt_list = Schedule.get_roll_table_by_type_in_weeks(trainees, monitor, [current_week, ], event_type)

    rolls = Roll.objects.filter(event__in=event_list, date__gte=start_date, date__lte=end_date).exclude(status='P').select_related('trainee', 'event')

    roll_dict = OrderedDict()

    # Populate roll_dict from roll object for look up for building roll table
    for roll in rolls:
      r = roll_dict.setdefault(roll.trainee, OrderedDict())
      r[(roll.event, roll.date)] = roll

    # Add roll to each event from roll table
    for trainee in roll_dict:
      # Only update if trainee predefined
      if trainee in trainee_evt_list:
        evt_list = trainee_evt_list[trainee]
        if len(evt_list) <= 0:
          # delete empty column if all blocked out
          del trainee_evt_list[trainee]
        else:
          for i in range(0, len(evt_list)):
            ev = copy(evt_list[i])
            d = ev.start_datetime.date()
            # Add roll if roll exists for trainee
            if trainee in roll_dict and (ev, d) in roll_dict[trainee]:
              # if trainee is on self attendance (trainee.self_attendance=True),
              # only display rolls not submitted by the trainee and modify rolls that are not submitted by the trainee.
              if trainee.self_attendance and (trainee == roll_dict[trainee][(ev, d)].submitted_by):
                continue
              else:
                ev.roll = roll_dict[trainee][(ev, d)]
            evt_list[i] = ev

    ctx['event_type'] = event_type
    ctx['start_date'] = start_date
    ctx['term_start_date'] = CURRENT_TERM.start.strftime('%Y%m%d')
    ctx['current_week'] = current_week
    ctx['trainees'] = trainees
    ctx['trainees_event_list'] = trainee_evt_list
    ctx['event_list'] = event_list
    ctx['week'] = CURRENT_TERM.term_week_of_date(date.today())
    return ctx


# Class Rolls Table
class ClassRollsView(TableRollsView):
  def get_context_data(self, **kwargs):
    kwargs['trainees'] = Trainee.objects.all()
    kwargs['event_type'] = 'C'
    kwargs['monitor'] = 'AM'
    ctx = super(ClassRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "Class Rolls"
    return ctx


# Meal Rolls
class MealRollsView(TableRollsView):
  def get_context_data(self, **kwargs):
    kwargs['trainees'] = Trainee.objects.all()
    kwargs['event_type'] = 'M'
    kwargs['monitor'] = 'AM'
    ctx = super(MealRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "Meal Rolls"
    return ctx


# Study Rolls
class StudyRollsView(TableRollsView):
  def get_context_data(self, **kwargs):
    kwargs['trainees'] = Trainee.objects.all()
    kwargs['event_type'] = 'S'
    kwargs['monitor'] = 'AM'
    ctx = super(StudyRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "Study Rolls"
    return ctx


# House Rolls
class HouseRollsView(TableRollsView):
  group_required = [u'HC', u'attendance_monitors', u'training_assistant']

  def checkfinalize(self, trainees, e_type, week):
    rfs = RollsFinalization.objects.filter(trainee__in=trainees, events_type=e_type)
    for rf in rfs:
      if not rf.has_week(week):
        rfs = rfs.exclude(id=rf.id)

    if trainees.count() == rfs.count():
      return True
    else:
      return False

  def post(self, request, *args, **kwargs):
    if self.request.user.has_group(['attendance_monitors', 'training_assistant']):
      kwargs['house_id'] = self.request.POST.get('house')

    kwargs['selected_date'] = self.set_week()
    context = self.get_context_data(**kwargs)
    return super(HouseRollsView, self).render_to_response(context)

  def get_context_data(self, **kwargs):
    if kwargs.get('house_id', None):
      house_id = kwargs['house_id']
      house = House.objects.get(pk=house_id)
    elif trainee_from_user(self.request.user):
      house = self.request.user.house
    else:
      house = House.objects.first()

    trainees = Trainee.objects.filter(house=house)
    if not self.request.user.has_group(['attendance_monitors']):
      trainees = trainees.filter(house=house).filter(self_attendance=False)

    kwargs['trainees'] = trainees
    kwargs['event_type'] = 'H'
    kwargs['monitor'] = 'HC'
    ctx = super(HouseRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "House Rolls"
    ctx['selected_house_id'] = house.id
    if self.request.user.has_group(['attendance_monitors', 'training_assistant']):
      ctx['houses'] = House.objects.filter(used=True).order_by("name").exclude(name__in=['TC', 'MCC', 'COMMUTER']).values("pk", "name")

    if not self.request.user.has_group(['attendance_monitors', 'training_assistant']):
      ctx['finalized'] = self.checkfinalize(trainees, kwargs['monitor'], ctx['current_week'])

    return ctx


# Team Rolls
class TeamRollsView(TableRollsView):
  group_required = [u'team_monitors', u'attendance_monitors', u'training_assistant']

  def checkfinalize(self, trainees, e_type, week):
    rfs = RollsFinalization.objects.filter(trainee__in=trainees, events_type=e_type)
    for rf in rfs:
      if not rf.has_week(week):
        rfs = rfs.exclude(id=rf.id)

    if trainees.count() == rfs.count():
      return True
    else:
      return False

  def post(self, request, *args, **kwargs):
    if self.request.user.has_group(['attendance_monitors', 'training_assistant']) and self.request.POST.get('team'):
      kwargs['team_id'] = self.request.POST.get('team')

    kwargs['selected_date'] = self.set_week()
    context = self.get_context_data(**kwargs)
    return super(TeamRollsView, self).render_to_response(context)

  def get_context_data(self, **kwargs):
    if 'team_id' in kwargs.keys():
      team_id = kwargs['team_id']
      team = Team.objects.get(pk=team_id)
    elif trainee_from_user(self.request.user):
      team = self.request.user.team
    else:
      team = Team.objects.first()

    trainees = Trainee.objects.filter(team=team)
    if not self.request.user.has_group(['attendance_monitors']):
      trainees = trainees.filter(self_attendance=False)

    kwargs['trainees'] = trainees
    kwargs['event_type'] = 'T'
    kwargs['monitor'] = 'TM'
    ctx = super(TeamRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "Team Rolls"
    ctx['selected_team_id'] = team.id
    if self.request.user.has_group(['attendance_monitors', 'training_assistant']):
      ctx['teams'] = Team.objects.all().order_by("type", "name").values("pk", "name")

    if not self.request.user.has_group(['attendance_monitors', 'training_assistant']):
      ctx['finalized'] = self.checkfinalize(trainees, kwargs['monitor'], ctx['current_week'])

    return ctx


# YPC Rolls
class YPCRollsView(TableRollsView):
  group_required = [u'ypc_monitors', u'attendance_monitors', u'training_assistant']

  def get_context_data(self, **kwargs):
    kwargs['trainees'] = Trainee.objects.filter(team__type__in=['YP', 'CHILD']).filter(Q(self_attendance=False, current_term__gt=2) | Q(current_term__lte=2))
    kwargs['event_type'] = 'Y'
    kwargs['monitor'] = 'AM'
    ctx = super(YPCRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "YPC Rolls"
    return ctx


def finalize_rolls(request):
  data = json.loads(request.body)
  trainee_ids = data['trainee_id']
  week = data['week']
  if data['event_type'] == 'H':
    e_type = 'HC'
  elif data['event_type'] == 'T':
    e_type = 'TM'
  else:
    e_type = 'AM'
  for t_id in trainee_ids:
    new_finalizerolls, created = RollsFinalization.objects.get_or_create(trainee=Trainee.objects.get(pk=t_id), events_type=e_type)
    if created:
      new_finalizerolls.weeks = str(week)
    else:
      new_finalizerolls.weeks = new_finalizerolls.weeks + "," + str(week)
    new_finalizerolls.save()

  return JsonResponse({'request': 'success'})


class RFIDRollsView(TableRollsView):
  def get_context_data(self, **kwargs):
    kwargs['trainees'] = Trainee.objects.all()
    kwargs['monitor'] = 'RF'
    ctx = super(RFIDRollsView, self).get_context_data(**kwargs)
    ctx['title'] = "RFID Rolls"
    return ctx


class RollViewSet(BulkModelViewSet):
  queryset = Roll.objects.all()
  serializer_class = RollSerializer
  filter_backends = (filters.DjangoFilterBackend,)
  filter_class = RollFilter

  def update_or_create(self, data):
    ref = self.request.META["HTTP_REFERER"]
    adjusted_data = deepcopy(data)
    if (not ref) or not ('/attendance/submit' in ref):
      adjusted_data['submitted_by'] = self.request.user.id
    serializer = self.get_serializer(data=adjusted_data)
    serializer.is_valid(raise_exception=True)
    self.perform_create(serializer)
    return serializer.data

  def create(self, request, *args, **kwargs):
    submitted_data = request.data
    if isinstance(submitted_data, dict):
      response_data = self.update_or_create(submitted_data)
    elif isinstance(submitted_data, list):
      response_data = [self.update_or_create(dic) for dic in submitted_data]

    return Response(response_data, status=status.HTTP_201_CREATED)

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
  queryset = Trainee.objects.all()
  serializer_class = AttendanceSerializer
  filter_backends = (filters.DjangoFilterBackend,)

  def get_queryset(self):
    trainee = Trainee.objects.get(pk=self.request.GET.get('trainee', self.request.user))
    return [trainee]

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
  queryset = Trainee.objects.all()
  serializer_class = AttendanceSerializer
  filter_backends = (filters.DjangoFilterBackend,)

  def allow_bulk_destroy(self, qs, filtered):
    return not all(x in filtered for x in qs)


def finalize_personal(request):
  if not request.method == 'POST':
    return HttpResponseBadRequest('Request must use POST method')
  data = json.loads(request.body)
  trainee = get_object_or_404(Trainee, id=data['trainee']['id'])

  period_start = dateutil.parser.parse(data['weekStart'])
  # period_end = dateutil.parser.parse(data['weekEnd'])
  week = Term.objects.get(current=True).reverse_date(period_start.date())[0]
  new_finalizerolls, created = RollsFinalization.objects.get_or_create(trainee=trainee, events_type='EV')
  if new_finalizerolls.weeks == '':
    new_finalizerolls.weeks = str(week)
  else:
    new_finalizerolls.weeks = new_finalizerolls.weeks + "," + str(week)
  new_finalizerolls.save()

  listJSONRenderer = JSONRenderer()
  # rolls = listJSONRenderer.render(RollSerializer(Roll.objects.filter(trainee=trainee, submitted_by=trainee), many=True).data)
  # return JsonResponse({'rolls': json.loads(rolls)})

  finalize_obj = listJSONRenderer.render(RollsFinalizationSerializer(RollsFinalization.objects.get(trainee=trainee, events_type='EV')).data)
  return JsonResponse({'finalized_weeks': finalize_obj})


@group_required(('attendance_monitors',))
def rfid_signin(request, trainee_id):
  data = {}
  trainee = Trainee.objects.filter(rfid_tag=trainee_id).first()
  if trainee is None:
    data = {
        'ok': False,
        'errMsg': 'RFID tag is invalid'
    }
  else:
    events = filter(lambda x: x.monitor == 'RF', trainee.immediate_upcoming_event())
    if not events:
      data = {
          'ok': False,
          'errMsg': 'No event found for %s' % trainee
      }
    else:
      now = datetime.now()
      event = events[0]
      if (now - event.start_datetime) > timedelta(minutes=15):
        status = 'A'
      elif (now - event.start_datetime) > timedelta(minutes=0):
        status = 'T'
      else:
        status = 'P'
      roll = Roll(event=event, trainee=trainee, status=status, submitted_by=trainee, date=now)
      roll.save()
      data = {
          'ok': True,
          'trainee': trainee.full_name,
          'roll': status,
          'event': event.name,
          'now': now.isoformat()
      }

  return HttpResponse(json.dumps(data), content_type='application/json')


@group_required(('attendance_monitors',))
def rfid_finalize(request, event_id, event_date):
  event = get_object_or_404(Event, pk=event_id)
  date = datetime.strptime(event_date, "%Y-%m-%d").date()
  if not event.monitor == 'RF':
    return HttpResponseBadRequest('No event found')

  # mark trainees without a roll for this event absent
  rolls = event.roll_set.filter(date=date)
  trainees_with_roll = set([roll.trainee for roll in rolls])
  schedules = event.schedules.all()
  for schedule in schedules:
    trainees = schedule.trainees.all()
    for trainee in trainees:
      if trainee not in trainees_with_roll:
        roll = Roll(event=event, trainee=trainee, status='A', submitted_by=trainee, date=date, finalized=True)
        roll.save()

  # mark existing rolls as finalized
  rolls.update(finalized=True)

  # don't keep a record of present to save space
  rolls.filter(status='P', leaveslips__isnull=True).delete()

  return HttpResponse('Roll finalized')


@group_required(('attendance_monitors',))
def rfid_tardy(request, event_id, event_date):
  event = get_object_or_404(Event, pk=event_id)
  date = datetime.strptime(event_date, "%Y-%m-%d").date()
  if not event.monitor == 'RF':
    return HttpResponseBadRequest('No event found')
  event.roll_set.filter(date=date, status='T', leaveslips__isnull=True).delete()
  return HttpResponse('Roll tardies removed')


class RollCRUDMixin(GroupRequiredMixin):
  model = Roll
  template_name = 'attendance/roll_admin_form.html'
  form_class = RollAdminForm
  group_required = [u'attendance_monitors', u'training_assistant']

  def form_valid(self, form):  # not used by delete-view
    r = form.instance
    rolls = Roll.objects.filter(trainee=r.trainee, event=r.event, date=r.date).exclude(id=r.id)

    if rolls.exists():
      current = rolls.first()
      msg = 'This is a duplicate of %s.' % current
      # trainees on self attendance can have two rolls for any event on the same date given
      # that one is submitted by themselves and another one is not
      if r.trainee.self_attendance:
        if current.self_submitted and r.self_submitted:
          form._errors[NON_FIELD_ERRORS] = ErrorList([msg])
          return super(RollCRUDMixin, self).form_invalid(form)
        elif not current.self_submitted and not r.self_submitted:
          form._errors[NON_FIELD_ERRORS] = ErrorList([msg])
          return super(RollCRUDMixin, self).form_invalid(form)
      # if trainee not self_att and other roll exists, it's a duplicate
      else:
        form._errors[NON_FIELD_ERRORS] = ErrorList([msg])
        return super(RollCRUDMixin, self).form_invalid(form)

    return super(RollCRUDMixin, self).form_valid(form)


class RollAdminCreate(RollCRUDMixin, CreateView):
  def get_context_data(self, **kwargs):
    ctx = super(RollAdminCreate, self).get_context_data(**kwargs)
    ctx['page_title'] = 'Create Roll'
    ctx['button_label'] = 'Create'
    return ctx


class RollAdminUpdate(RollCRUDMixin, UpdateView):
  def get_context_data(self, **kwargs):
    ctx = super(RollAdminUpdate, self).get_context_data(**kwargs)
    ctx['page_title'] = 'Update Roll'
    ctx['button_label'] = 'Update'
    ctx['delete_button'] = True
    return ctx

  def get_form_kwargs(self):
    kwargs = super(RollAdminUpdate, self).get_form_kwargs()
    kwargs['trainee'] = self.get_object().trainee
    return kwargs


class RollAdminDelete(RollCRUDMixin, DeleteView):
  success_url = reverse_lazy('attendance:admin-roll-create')
  template_name = 'attendance/roll_confirm_delete.html'

  def get_context_data(self, **kwargs):
    ctx = super(RollAdminDelete, self).get_context_data(**kwargs)
    ctx['page_title'] = 'Delete Roll'
    ctx['button_label'] = 'Delete'
    return ctx

  def get_success_url(self):
    rolls = Roll.objects.all()
    if rolls.exists():
      return reverse_lazy('attendance:admin-roll', kwargs={'pk': rolls.first().pk})
    else:
      return self.success_url


class TraineeAttendanceAdminView(TemplateView):
  template_name = 'attendance/trainee_attendance_admin_view.html'

  def get_context_data(self, **kwargs):
    ctx = super(TraineeAttendanceAdminView, self).get_context_data(**kwargs)
    trainee_id = self.request.GET.get('trainee_id', -1)
    if trainee_id < 0:
      t = Trainee.objects.first()
    else:
      t = Trainee.objects.get(id=trainee_id)
    eids = t.schedules.all().order_by('events').distinct('events').values_list('events', flat=True)
    ctx['page_title'] = 'Single Trainee Attendance View'
    ctx['rolls'] = t.rolls.all()
    ctx['schedules'] = t.schedules.all()
    ctx['events'] = Event.objects.filter(id__in=eids)
    ctx['trainee_list'] = Trainee.objects.values('id', 'firstname', 'lastname')
    ctx['trainee'] = t.full_name
    return ctx


class SelfAttendancePoolView(GroupRequiredMixin, CreateView):
  model = SelfAttendancePool
  template_name = 'attendance/self_att_pool_form.html'
  form_class = SelfAttendanceForm
  group_required = ['training_assistant', 'attendance_monitors']

  def get_context_data(self, **kwargs):
    ctx = super(SelfAttendancePoolView, self).get_context_data(**kwargs)
    ctx['pools'] = SelfAttendancePool.objects.filter(term=CURRENT_TERM)
    ctx['page_title'] = 'Self Attendance Pool Admin'
    return ctx
