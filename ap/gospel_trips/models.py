# -*- coding: utf-8 -*-

from accounts.models import Trainee
from django.contrib.postgres.fields import HStoreField
from django.core.urlresolvers import reverse
from django.db import models

from .constants import HELP_TEXT


class GospelTrip(models.Model):
  name = models.CharField(max_length=40, blank=True)

  open_time = models.DateTimeField(blank=True)

  close_time = models.DateTimeField(blank=True)

  def get_absolute_url(self):
    return reverse('gospel_trips:admin-update', kwargs={'pk': self.id})

  def get_trainee_url(self):
    return reverse('gospel_trips:gospel-trips', kwargs={'pk': self.id})

  def get_report_url(self):
    return reverse('gospel_trips:response-report', kwargs={'pk', self.id})

  def __unicode__(self):
    try:
      return "[%s]" % (self.name)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)


class Destination(models.Model):
  name = models.CharField(max_length=250, blank=True)

  gospel_trip = models.ForeignKey(GospelTrip, on_delete=models.CASCADE)

  team_contacts = models.ManyToManyField(Trainee, related_name='team_contacts')

  trainees = models.ManyToManyField(Trainee, related_name='destination')

  def set_team_contact(self, trainee, is_contact=True):
    if is_contact:
      self.team_contacts.add(trainee)
    else:
      if trainee in self.team_contacts.all():
        self.team_contacts.remove(trainee)
    self.save()

  def remove_trainee(self, trainee):
    self.trainees.remove(trainee)
    self.set_team_contact(trainee, False)

  def __unicode__(self):
    try:
      return "Section: %s - %s" % (self.gospel_trip, self.name)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)


class Section(models.Model):
  gospel_trip = models.ForeignKey(GospelTrip, on_delete=models.CASCADE)

  name = models.CharField(max_length=80, null=True)

  show = models.CharField(max_length=25, default='SHOW')

  def __unicode__(self):
    try:
      return "%s - %s" % (self.gospel_trip, self.name)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)

  class Meta:
    order_with_respect_to = 'gospel_trip'  # access with _order


class Question(models.Model):
  section = models.ForeignKey(Section, on_delete=models.CASCADE)

  label = models.CharField(max_length=80, null=True, blank=True)

  instruction = models.TextField(null=True, blank=True)

  answer_type = models.CharField(null=True, blank=True, max_length=100)

  answer_required = models.BooleanField(default=False)

  def __unicode__(self):
    try:
      return "Question: %s - %s - %s" % (self.section.gospel_trip, self.section.name[:8], self.label)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)

  class Meta:
    order_with_respect_to = 'section'


class Answer(models.Model):

  question = models.ForeignKey(Question, on_delete=models.CASCADE)

  gospel_trip = models.ForeignKey(GospelTrip, on_delete=models.CASCADE)

  trainee = models.ForeignKey(Trainee, on_delete=models.CASCADE)

  response = models.TextField(null=True, blank=True, max_length=500)

  def __unicode__(self):
    try:
      return "%s - %s" % (self.question, self.trainee)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)

  class Meta:
    order_with_respect_to = 'question'


class AnswerChoice(models.Model):

  name = models.CharField(null=True, blank=True, max_length=100, unique=True, help_text=HELP_TEXT)

  options = models.CharField(null=True, blank=True, max_length=500)

  def __unicode__(self):
    try:
      return "AnswerChoice - %s" % (self.name)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)


class LocalImage(models.Model):
  file = models.ImageField(upload_to='gospel_trips/uploaded_images/')


class NonTrainee(models.Model):
  gospel_trip = models.ForeignKey(GospelTrip, on_delete=models.CASCADE)
  firstname = models.CharField(null=True, blank=True, max_length=100)
  lastname = models.CharField(null=True, blank=True, max_length=100)
  GENDER = (
      ('M', 'Male'),
      ('F', 'Female')
  )
  PART_TYPE = (
      ('OS', 'Overseer'),
      ('MA', 'MA-Trainee')
  )
  gender = models.CharField(max_length=1, choices=GENDER)
  locality = models.CharField(null=True, blank=True, max_length=100)
  participant_type = models.CharField(max_length=2, choices=PART_TYPE)
  assigned_destination = models.ForeignKey(Destination, null=True, on_delete=models.SET_NULL)
  application_data = HStoreField(null=True)

  def get_absolute_url(self):
    return reverse('gospel_trips:nontrainee-update', kwargs={'pk': self.gospel_trip.id, 'ntpk': self.id})

  def __unicode__(self):
    try:
      return "%s %s" % (self.firstname, self.lastname)
    except AttributeError as e:
      return str(self.id) + ": " + str(e)
