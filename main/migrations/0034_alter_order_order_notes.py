# Generated by Django 4.1.4 on 2023-01-09 19:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0033_alter_order_payment_method'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='order_notes',
            field=models.TextField(blank=True, null=True),
        ),
    ]
