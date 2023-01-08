# Generated by Django 4.1.4 on 2023-01-08 16:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0024_remove_news_tag_staff_news_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='news_article',
            name='player_tags',
            field=models.ManyToManyField(blank=True, default=None, to='main.player'),
        ),
        migrations.AddField(
            model_name='news_article',
            name='staff_tags',
            field=models.ManyToManyField(blank=True, default=None, to='main.staff'),
        ),
    ]
