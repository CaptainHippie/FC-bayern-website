# Generated by Django 4.1.2 on 2022-11-03 19:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0014_alter_team_logo'),
    ]

    operations = [
        migrations.AddField(
            model_name='match',
            name='banner',
            field=models.ImageField(default='banners/Allianz_Arena_wide.jpg', null=True, upload_to='banners'),
        ),
    ]