# Generated by Django 4.1.2 on 2022-11-05 18:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0029_sponsor'),
    ]

    operations = [
        migrations.AddField(
            model_name='sponsor',
            name='image_url',
            field=models.CharField(max_length=200, null=True),
        ),
    ]
