# Generated by Django 4.1.4 on 2023-01-07 20:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0019_news_article_home_banner'),
    ]

    operations = [
        migrations.AddField(
            model_name='match',
            name='tags',
            field=models.ManyToManyField(blank=True, default=None, to='main.news_tag'),
        ),
    ]
