from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^q1$', views.q1, name='q1'),
]