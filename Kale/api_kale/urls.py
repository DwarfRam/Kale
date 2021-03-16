from django.urls import path
from api_kale.views import RecipesAPIView

app_name = 'api_kale'
urlpatterns = [
    path('recipes/', RecipesAPIView.as_view()),
]