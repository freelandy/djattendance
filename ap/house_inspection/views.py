# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.views import View
from django.views.generic import TemplateView
from django.views.generic.list import ListView
from house_inspection.models import FAQ
from aputils.decorators import group_required


class HouseInspectionFaq(TemplateView):
  template_name = 'house_inspection/faq.html'  
  model = FAQ
  group_required = ['house_inspectors', 'training_assistant']

  def get_context_data(self, **kwargs)  :
  	context = super(HouseInspectionFaq, self).get_context_data(**kwargs)
  	context['page_title'] = "FAQ"
  	context['list_questions'] = FAQ.objects.values('id', 'question', 'answer')

  	return context
  '''
  #def get(self, request, *args, **kwargs):
  #      #form = self.form_class(initial=self.initial)
  #      return render(request, self.template_name)#, {'form': form})
  '''
  '''
  def get(self, request, *args, **kwargs):
        #self.object_list = self.get_queryset()
        #allow_empty = self.get_allow_empty()

        # ...

        context = self.get_context_data()
        context['page_title'] = "FAQ"
        return self.render_to_response(context)
  '''





'''
class MyFormView(View):
    form_class = MyForm
    initial = {'key': 'value'}
    template_name = 'form_template.html'

    def get(self, request, *args, **kwargs):
        form = self.form_class(initial=self.initial)
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            # <process form cleaned data>
            return HttpResponseRedirect('/success/')

        return render(request, self.template_name, {'form': form})
'''
