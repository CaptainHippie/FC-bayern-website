# Generated by Django 4.1.4 on 2022-12-17 02:05

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_alter_news_article_image_url'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news_article',
            name='added',
            field=models.DateTimeField(default=django.utils.timezone.now, null=True),
        ),
    ]
