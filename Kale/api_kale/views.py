from .serializers import UserSerializer
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status, generics, filters
from django.contrib.auth.models import User
from django.shortcuts import render
from api_kale.models import recipes
from api_kale.serializers import RecipesSerializer



class RecipesAPIView(generics.ListCreateAPIView):
    filters_backends = (filters.SearchFilter,)
    queryset = recipes.objects.all()
    serializer_class = RecipesSerializer