from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^q1$', views.q1, name='q1'),
    url(r'^q1t$', views.q1t, name='q1t'),
    url(r'^q1tRow', views.q1tRow, name='q1tRow'),
]