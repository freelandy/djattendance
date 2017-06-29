import datetime
from itertools import chain

from django.contrib import messages
from django.db.models import Count, Q
from django.core.urlresolvers import reverse

from models import Announcement
from bible_tracker.models import BibleReading
from leaveslips.models import IndividualSlip, GroupSlip
from web_access.models import WebRequest
from house_requests.models import MaintenanceRequest, LinensRequest, FramingRequest
from terms.models import Term
from aputils.trainee_utils import is_trainee, trainee_from_user

def get_popups(request):
  if not is_trainee(request.user):
    return []
  trainee = trainee_from_user(request.user)
  announcements = Announcement.announcements_for_today(trainee, is_popup=True)
  return announcements

def get_announcements(request):
  notifications = []
  if is_trainee(request.user):
    trainee = trainee_from_user(request.user)
    notifications = chain(discipline_announcements(trainee),
                          server_announcements(trainee),
                          bible_reading_announcements(trainee),
                          request_statuses(trainee),
                          attendance_announcements(trainee))
  # sort on severity level of message
  return sorted(notifications, lambda a, b: b[0] - a[0])

def request_statuses(trainee):
  requests = chain(
    IndividualSlip.objects.filter(trainee=trainee, status='F'),
    GroupSlip.objects.filter(trainee=trainee, status='F'),
    WebRequest.objects.filter(trainee=trainee, status='F'),
    Announcement.objects.filter(trainee_author=trainee, status='F'),
    MaintenanceRequest.objects.filter(trainee_author=trainee, status='F'),
    LinensRequest.objects.filter(trainee_author=trainee, status='F'),
    FramingRequest.objects.filter(trainee_author=trainee, status='F')
  )
  message = 'Your <a href="{url}">{request}</a> has been marked for fellowship'
  return [(messages.ERROR, message.format(url=req.get_absolute_url(), request=req._meta.verbose_name)) for req in requests]

def bible_reading_announcements(trainee):
  term = Term.current_term()
  week = term.term_week_of_date(datetime.date.today())
  url = reverse('bible_tracker:index')
  fmtString = 'You have not filled out your <a href="{url}">Bible reading</a>'
  try:
    reading = BibleReading.objects.get(trainee=trainee)
  except:
    return [(messages.WARNING, fmtString.format(url=url))]
  unreadWeeks = []
  fmtString += ' for week {week} yet'
  for w in range(week):
    stats = reading.weekly_statistics(w, w, term.id)
    if stats['number_filled'] < 7:
      unreadWeeks.append(str(w))
  if not unreadWeeks:
    return []
  return [(messages.WARNING, fmtString.format(url=url, week=', '.join(unreadWeeks)))]

def server_announcements(trainee):
  announcements = Announcement.announcements_for_today(trainee)
  return [(messages.INFO, a.announcement) for a in announcements]

def discipline_announcements(trainee):
  url = reverse('lifestudies:discipline_list')
  message = 'Life Study Summary due for {inf}. <a href="{url}">Still need: {due}</a>'
  notifications = map(lambda d: (messages.WARNING, message.format(url=url, inf=d.get_infraction_display(), due=d.get_num_summary_due())),
                  filter(lambda d: d.get_num_summary_due > 0, trainee.discipline_set.all()))
  return notifications

def attendance_announcements(trainee):
  today = datetime.date.today()
  term = Term.current_term()
  week = term.term_week_of_date(today)
  weeks = map(str, filter(lambda w: not term.is_attendance_finalized(w, trainee), range(week)))
  message = 'You have not finalized your attendance for week {week}. Fellowship with your TA to finalize it.'
  return [(messages.WARNING, message.format(week=', '.join(weeks)))] if weeks else []