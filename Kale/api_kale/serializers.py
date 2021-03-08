from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.validators import UniqueTogetherValidator


class UserSerializer(serializers.ModelSerializer):

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user

    class Meta:
        model = User
        fields = (
            'name',
            'mdp',
            'email',
        )
        #Verification par rapport à l'unicité des nom et email des utilisateur
        validators = [
            UniqueTogetherValidator(
                queryset=User.objects.all(),
                fields=['name', 'email']
            )
        ]