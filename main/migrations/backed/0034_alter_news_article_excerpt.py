# Generated by Django 4.1.2 on 2022-11-06 08:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0033_news_article_excerpt_news_tag'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news_article',
            name='excerpt',
            field=models.TextField(null=True),
        ),
    ]
