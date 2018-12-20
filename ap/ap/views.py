from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.db.models import F, Q, Count
# from accounts.models import Trainee
from datetime import date
from dailybread.models import Portion
from django.http import HttpResponse
from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned
from announcements.notifications import get_announcements, get_popups
from aputils.trainee_utils import is_trainee, is_TA, trainee_from_user
from bible_tracker.models import BibleReading, EMPTY_WEEKLY_STATUS, UNFINALIZED_STR
from bible_tracker.views import EMPTY_WEEK_CODE_QUERY
from terms.models import Term
from house_requests.models import MaintenanceRequest
from django.core.urlresolvers import reverse_lazy
from services.models import (Assignment, Category, Prefetch, SeasonalServiceSchedule,
                      Service, ServiceSlot, WeekSchedule, Worker)
import json

from aputils.utils import WEEKDAY_CODES
from services.utils import (SERVICE_CHECKS)


@login_required
def home(request):
  user = request.user
  trainee = trainee_from_user(user)

  # Set default values
  current_week = 19
  weekly_status = EMPTY_WEEKLY_STATUS
  finalized_str = UNFINALIZED_STR
  service_db = {}
  designated_list = []

  # Default for Daily Bible Reading
  current_term = Term.current_term()
  term_id = current_term.id

  if is_trainee(user):
    worker = Worker.objects.get(trainee=user)

    if request.GET.get('week_schedule'):
      current_week = request.GET.get('week_schedule')
      current_week = int(current_week)
      current_week = current_week if current_week < LAST_WEEK else LAST_WEEK
      current_week = current_week if current_week > FIRST_WEEK else FIRST_WEEK
      cws = WeekSchedule.get_or_create_week_schedule(trainee, current_week)
    else:
      # Do not set as user input.
      current_week = Term.current_term().term_week_of_date(date.today())
      cws = WeekSchedule.get_or_create_week_schedule(trainee, current_week)
    
    # try:
    #   # Do not set as user input.
    #   current_week = Term.current_term().term_week_of_date(date.today())
    #   cws = WeekSchedule.get_or_create_week_schedule(trainee, current_week)
      
    # except ValueError:
    #   cws = WeekSchedule.get_or_create_current_week_schedule(trainee)

    term_week_code = str(term_id) + "_" + str(current_week)

    try:
      trainee_bible_reading = BibleReading.objects.get(trainee=user)
    except ObjectDoesNotExist:
      trainee_bible_reading = BibleReading(
        trainee=trainee_from_user(user),
        weekly_reading_status={term_week_code: EMPTY_WEEK_CODE_QUERY},
        books_read={})
      trainee_bible_reading.save()
    except MultipleObjectsReturned:
      return HttpResponse('Multiple bible reading records found for trainee!')

    if term_week_code in trainee_bible_reading.weekly_reading_status:
      weekly_reading = trainee_bible_reading.weekly_reading_status[term_week_code]
      json_weekly_reading = json.loads(weekly_reading)
      weekly_status = str(json_weekly_reading['status'])
      finalized_str = str(json_weekly_reading['finalized'])

    worker_assignments = Worker.objects.select_related('trainee').prefetch_related(
        Prefetch('assignments', queryset=Assignment.objects.filter(week_schedule=cws).select_related('service').order_by('service__weekday'), to_attr='week_assignments'))
        
    # Find services related to the user
    for current_worker in worker_assignments:
      if worker == current_worker:
        for a in current_worker.week_assignments:
          if a.service.category.name == "Designated Services":
            designated_list.append(a.service)
          else:
            service_db.setdefault(a.service, a.service.weekday)

    print worker, cws, list(service_db.values())
    print service_db, designated_list

  categories = Category.objects.prefetch_related(
      Prefetch('services', queryset=Service.objects.order_by('weekday', 'start')),
      Prefetch('services__serviceslot_set', queryset=ServiceSlot.objects.filter(assignments__week_schedule=cws).annotate(workers_count=Count('assignments__workers')).order_by('-worker_group__assign_priority')),
      Prefetch('services__serviceslot_set', queryset=ServiceSlot.objects.filter(~Q(Q(assignments__isnull=False) & Q(assignments__week_schedule=cws))).filter(workers_required__gt=0), to_attr='unassigned_slots'),
      Prefetch('services__serviceslot_set__assignments', queryset=Assignment.objects.filter(week_schedule=cws)),
      Prefetch('services__serviceslot_set__assignments__workers', queryset=Worker.objects.select_related('trainee').order_by('trainee__gender', 'trainee__firstname', 'trainee__lastname'))
  ).distinct()

  service_categories = Category.objects.filter(services__designated=False).prefetch_related(
      Prefetch('services', queryset=Service.objects.filter(designated=False).order_by('weekday', 'start')),
      Prefetch('services__serviceslot_set', queryset=ServiceSlot.objects.all().order_by('-worker_group__assign_priority'))
  ).distinct()

  data = {
      'daily_nourishment': Portion.today(),
      'user': user,
      'worker': worker,
      'isTrainee': is_trainee(user),
      'trainee_info': BibleReading.weekly_statistics,
      'current_week': current_week,
      'weekly_status': weekly_status,
      'weeks': Term.all_weeks_choices(),
      'finalized': finalized_str,
      'weekday_codes':json.dumps(WEEKDAY_CODES),
      'categories': categories,
      'service_categories': service_categories,
      'service': service_db,
      'service_day': list(service_db.values()),
      'service_name': list(service_db),
      'designated_list': designated_list,
      'weekday_codes': json.dumps(WEEKDAY_CODES)
  }

  notifications = get_announcements(request)
  for notification in notifications:
    tag, content = notification
    messages.add_message(request, tag, content)
  data['popups'] = get_popups(request)

  if is_trainee(user):
    trainee = trainee_from_user(user)
    # Bible Reading progress bar
    trainee_bible_reading = BibleReading.objects.filter(trainee=trainee).first()
    if trainee_bible_reading is None:
      data['bible_reading_progress'] = 0
    else:
      _, year_progress = BibleReading.calcBibleReadingProgress(trainee_bible_reading, user)
      data['bible_reading_progress'] = year_progress

  # condition for maintenance brothers
  elif is_TA(user) and user.has_group(['facility_maintenance']) and user.groups.all().count() == 1:
    data['house_requests'] = MaintenanceRequest.objects.all()
    data['request_status'] = MaintenanceRequest.STATUS

  return render(request, 'index.html', context=data)

def custom404errorview(request):
  ctx = {
    'image_path': 'img/404error.png',
    'page_title': 'Page Not Found'
  }
  return render(request, 'error.html', context=ctx)

    
def custom500errorview(request):
  ctx = {
    'image_path': 'img/500error.png',
    'page_title': 'Internal Server Error'
  }
  return render(request, 'error.html', context=ctx)


def custom502errorview(request):
  ctx = {
    'image_path': 'img/502error.png',
    'page_title': 'Bad Gateway Error'
  }
  return render(request, 'error.html', context=ctx)


def custom503errorview(request):
  ctx = {
    'image_path': 'img/503error.png',
    'page_title': 'Service Unavailable'
  }
  return render(request, 'error.html', context=ctx)

def custom504errorview(request):
  ctx = {
    'image_path': 'img/504error.png',
    'page_title': 'Gateway Timeout'
  }
  return render(request, 'error.html', context=ctx)

def printerinstructions(request):
  ctx = {
    'image_path' : 'img/printer.jpg',
    'page_title' : 'Printer Instructions',
  }
  return render(request, 'printer.html', context=ctx)
