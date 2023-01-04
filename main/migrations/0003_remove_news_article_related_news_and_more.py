# Generated by Django 4.1.4 on 2022-12-26 20:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_news_article_related_news'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='news_article',
            name='related_news',
        ),
        migrations.AddField(
            model_name='news_article',
            name='related_news',
            field=models.ManyToManyField(blank=True, default=None, to='main.news_article'),
        ),
    ]