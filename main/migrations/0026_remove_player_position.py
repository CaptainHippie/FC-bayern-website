# Generated by Django 4.1.4 on 2023-01-08 18:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0025_news_article_player_tags_news_article_staff_tags'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='player',
            name='position',
        ),
    ]