from django.conf.urls import patterns, url
from exams import views


urlpatterns = patterns(
    '',
    url(r'^$', views.ExamTemplateListView.as_view(), name='exam_template_list'),
    url(r'^(?P<pk>\d+)/single-exam-grades$', views.SingleExamGradesListView.as_view(),
        name='single_exam_grades'),
    url(r'^(?P<pk>\d+)/take-exam$', views.TakeExamView.as_view(), name='take_exam'),
    url(r'^(?P<pk>\d+)/exam-retake-list$', views.GenerateRetakeList.as_view(), name='exam_retake_list'),
    url(r'^exam-grade-reports$', views.GenerateGradeReports.as_view(), name='exam_grade_reports'),
)
