from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include('ingWebApp.urls')),
    url(r'^ingWebApp/', include('ingWebApp.urls')),
]
