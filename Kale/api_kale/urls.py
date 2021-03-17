from django.urls import path
from . import views

app_name = 'api_kale'
urlpatterns = [
    path('recipes/', views.RecipesAPIView.as_view()),
]