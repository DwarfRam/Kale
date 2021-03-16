from django.contrib import admin

from .models import *

admin.site.register(users)
admin.site.register(ingredients)
admin.site.register(tools)
admin.site.register(recipes)