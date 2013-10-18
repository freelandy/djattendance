from django.db import models

from accounts.models import User

""" dailybread models.py

This module displays a daily excerpt from the Word or the ministry every day.
It also allow users to submit portions. 
"""


class Portion(models.Model):

    title = models.CharField(max_length=255)
    text = models.TextField()
    ref = models.CharField(max_length=255)
    submitted_by = models.ForeignKey(User)
    timestamp = models.TimeField(auto_now_add=True)
    approved = models.BooleanField(default=False)