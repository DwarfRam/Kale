from django.contrib.auth.models import User
from api_kale.models import users, recipes
from rest_framework import serializers


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = users
        fields = '__all__'

class RecipesSerializer(serializers.ModelSerializer):
    class Meta:
        model = recipes
        fields = '__all__'