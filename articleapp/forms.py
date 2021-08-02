from django.forms import ModelForm

from articleapp.models import Article


class ArticleCreationnForm(ModelForm):
    class Meta:
        model = Article
        fields=['title','image','content']