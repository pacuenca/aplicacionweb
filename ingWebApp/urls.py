from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = patterns('ingWebApp.views'
    url(r'^$', 'index_view', name='index'),
    url(r'^admin/', include(admin.site.urls),
)

