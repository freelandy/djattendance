# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from accounts.models import Trainee
from teams.models import Team
from terms.models import Term

#For which gospel pair there should be exactly one gospel statistics for every week
#Gospel Pair
class GospelPair(models.Model):
  #Which trainees compose this gospel pair
  team = models.ForeignKey(Team, blank=True, null= True, on_delete=models.SET_NULL)
  term = models.ForeignKey(Term, blank=True, null= True, on_delete=models.SET_NULL)
  trainees = models.ManyToManyField(Trainee, related_name="gospel_statistics")

#Gospel Statistics
class GospelStat(models.Model):
  gospelpair = models.ForeignKey(GospelPair)
  week = models.PositiveSmallIntegerField(default=0)
  tracts_distributed = models.PositiveSmallIntegerField(default=0)
  bibles_distributed = models.PositiveSmallIntegerField(default=0)
  contacted_30_sec = models.PositiveSmallIntegerField(default=0)
  led_to_pray = models.PositiveSmallIntegerField(default=0)
  baptized = models.PositiveSmallIntegerField(default=0)
  second_appointment = models.PositiveSmallIntegerField(default=0)
  regular_appointment = models.PositiveSmallIntegerField(default=0)
  minutes_on_gospel = models.PositiveSmallIntegerField(default=0)
  miniutes_in_appointment = models.PositiveSmallIntegerField(default=0)
  bible_study = models.PositiveSmallIntegerField(default=0)
  small_group = models.PositiveSmallIntegerField(default=0)

  #New students present at the district meeting
  district_meeting = models.PositiveSmallIntegerField(default=0)
  conference = models.PositiveSmallIntegerField(default=0)

