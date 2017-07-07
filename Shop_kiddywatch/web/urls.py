from django.conf.urls import url
from .views import *

urlpatterns = [
    url(r'^$', HomeView.as_view(), name='index'),
    url(r'^product-watch/(?P<id>[0-9]+)', ProductView.as_view(), name='product-watch'),

]
