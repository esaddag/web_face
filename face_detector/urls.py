from django.urls import path
from . import views


app_name="face_detector"

urlpatterns = [
	path('', views.MyIndexView.as_view(), name="index"),
	path('detect/', views.detect, name='detect'),
]