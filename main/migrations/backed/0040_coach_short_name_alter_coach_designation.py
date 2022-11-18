# Generated by Django 4.1.2 on 2022-11-08 09:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0039_remove_coach_position'),
    ]

    operations = [
        migrations.AddField(
            model_name='coach',
            name='short_name',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='coach',
            name='designation',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
