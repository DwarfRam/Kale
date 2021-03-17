from .serializers import UserSerializer
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status, generics, filters
from django.contrib.auth.models import User
from django.shortcuts import render
from api_kale.models import recipes
from api_kale.serializers import RecipesSerializer
from rest_framework.filters import OrderingFilter, SearchFilter

class RecipesAPIView(generics.ListCreateAPIView):
	search_fields = ['name']
	filter_backends = (filters.OrderingFilter, filters.SearchFilter,)
	queryset = recipes.objects.all()
	serializer_class = RecipesSerializer