

from django.db import models

# Create your models here.


class FAQ(models.Model):    
	
    question = models.TextField(null=True, blank=True)
    answer = models.TextField(null=True, blank=True)
    isAnswered = models.BooleanField(default=False)
    '''
    def __unicode__(self):
	    try:
	      return "%s %s" % (self.question, self.answer)
	    except AttributeError as e:
	      return str(self.id) + ": " + str(e)
	'''