from django.db import models

'''
TODO :
Chercher comment on fait un index
Ajouter table régime 
'''

class users(models.Model):
	id_user = models.AutoField(primary_key=True)
	name = models.CharField
	mdp =  models.CharField
	mail = models.CharField

	def __str__(self):
		return self.name

class ingredients(models.Model):
	id_ingredient = models.AutoField(primary_key=True)
	name = models.CharField
	description = models.CharField

	def __str__(self):
		return self.name

class tools(models.Model):
	id_tools = models.AutoField(primary_key=True)
	name = models.CharField
	description = models.CharField

	def __str__(self):
		return self.name

class recipes(models.Model):
	id_recipe = models.AutoField(primary_key=True)
	name = models.CharField
	description = models.CharField
	ingredients_id = models.ManyToManyField(ingredients)
	tools_id = models.ManyToManyField(tools)

	def __str__(self):
		return self.name

'''
class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')

class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)
'''