# Generated by Django 4.1.2 on 2022-11-05 19:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0030_sponsor_image_url'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='sponsor',
            name='image_url',
        ),
    ]