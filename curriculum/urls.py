from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='inicio'),
    path('cv/', views.cv, name='cv'),
]