from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.HouseInspectionFaq.as_view(), name='house_inspection'),
]