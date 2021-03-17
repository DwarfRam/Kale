from django.db import models

class users(models.Model):
	id_user = models.AutoField(primary_key=True)
	name = models.CharField(max_length=200)
	mdp =  models.CharField(max_length=200)
	mail = models.CharField(max_length=200)
	allergy = models.CharField(max_length=200)
	diet = models.CharField(max_length=200)
	
	def __str__(self):
		return self.name

class ingredients(models.Model):
	id_ingredient = models.AutoField(primary_key=True)
	name = models.CharField(max_length=200)
	description = models.TextField()

	def __str__(self):
		return self.name

class tools(models.Model):
	id_tools = models.AutoField(primary_key=True)
	name = models.CharField(max_length=200)
	description = models.TextField()

	def __str__(self):
		return self.name

class recipes(models.Model):
	id_recipe = models.AutoField(primary_key=True)
	name = models.CharField(max_length=200)
	description = models.TextField()
	ingredients_id = models.ManyToManyField(ingredients)
	tools_id = models.ManyToManyField(tools)

	def __str__(self):
		return self.name