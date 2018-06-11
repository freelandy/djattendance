from django.conf.urls import url

from gospel_trips import views

urlpatterns = [
  url(r'^admin/$', views.GospelTripView.as_view(), name='admin-create'),
  url(r'^admin/(?P<pk>\d+)$', views.gospel_trip_admin_update, name='admin-update'),
  url(r'^admin/(?P<pk>\d+)/delete$', views.gospel_trip_admin_delete, name='admin-delete'),
  url(r'^admin/(?P<pk>\d+)/duplicate$', views.gospel_trip_admin_duplicate, name='admin-duplicate'),
  url(r'^trip/(?P<pk>\d+)$', views.gospel_trip_trainee, name='gospel-trip'),
  url(r'^report/(?P<pk>\d+)$', views.GospelTripResponseView.as_view(), name='response-report'),
  url(r'^admin/(?P<pk>\d+)/destinations/$', views.DestinationEditorView.as_view(), name='destination-editor'),
  url(r'^admin/(?P<pk>\d+)/destinations/add$', views.destination_add, name='destination-add'),
  url(r'^admin/(?P<pk>\d+)/destinations/remove$', views.destination_remove, name='destination-remove'),
  url(r'^admin/(?P<pk>\d+)/destinations/edit$', views.destination_edit, name='destination-edit'),
  url(r'^admin/(?P<pk>\d+)/by-preference/$', views.DestinationByPreferenceView.as_view(), name='by-preference'),
  url(r'^admin/(?P<pk>\d+)/by-preference/team-contact$', views.assign_team_contact, name='assign-team-contact'),
  url(r'^admin/(?P<pk>\d+)/by-preference/assign-destination$', views.assign_destination, name='assign-destination'),
  url(r'^admin/(?P<pk>\d+)/by-group/$', views.DestinationByPreferenceView.as_view(), name='by-group'),
]
