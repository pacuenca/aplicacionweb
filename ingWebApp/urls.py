from django.conf.urls import patterns, url
from ingWebApp import views

urlpatterns = patterns('ingWebApp.views',
    url(r'^$', 'index_view', name='index'),
)

