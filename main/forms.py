from . models import *
from django.forms import ModelForm

class News_Article_Form(ModelForm):
    class Meta:
        model = News_article
        fields = "__all__"
        filter_horizontal = ['related_news', 'liked', 'tags']