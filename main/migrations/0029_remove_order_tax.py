# Generated by Django 4.1.4 on 2023-01-09 18:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0028_delete_position'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='tax',
        ),
    ]
