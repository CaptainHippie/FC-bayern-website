# Generated by Django 4.1.4 on 2023-01-07 19:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0016_news_tag_alter_news_article_excerpt_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='match',
            name='tags',
            field=models.ManyToManyField(blank=True, default=None, to='main.news_tag'),
        ),
        migrations.AlterField(
            model_name='news_article',
            name='tags',
            field=models.ManyToManyField(blank=True, default=None, to='main.news_tag'),
        ),
    ]