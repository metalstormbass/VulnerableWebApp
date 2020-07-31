from django.urls import path

from . import views
app_name = 'badcommand'
urlpatterns = [
    path('', views.index, name='index'),
    path('<int:command_id>/results/', views.results, name='results'),
]
