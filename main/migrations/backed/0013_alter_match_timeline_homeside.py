# Generated by Django 4.1.2 on 2022-11-03 14:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0012_alter_match_summary'),
    ]

    operations = [
        migrations.AlterField(
            model_name='match_timeline',
            name='homeside',
            field=models.BooleanField(default=True),
        ),
    ]