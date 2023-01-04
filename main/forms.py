from django import forms
from . models import News_article

 
class Related_News_Form(forms.ModelForm):
    related_news = forms.ModelMultipleChoiceField(queryset=News_article.objects.all(), required=False)
