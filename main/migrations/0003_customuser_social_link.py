# Generated by Django 4.1.3 on 2022-12-07 09:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_news_article_news_tag_staff_news_tag_player_comment'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='social_link',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]