# Generated by Django 4.1.3 on 2022-11-29 17:33

from django.db import migrations, models
import django.db.models.deletion
import django_countries.fields


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0013_remove_order_item_parent_order_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=100, null=True)),
                ('last_name', models.CharField(max_length=100, null=True)),
                ('company', models.CharField(max_length=100, null=True)),
                ('country', django_countries.fields.CountryField(max_length=2, null=True)),
                ('address_1', models.CharField(blank=True, max_length=200, null=True)),
                ('address_2', models.CharField(blank=True, max_length=200, null=True)),
                ('postcode', models.BigIntegerField(blank=True, null=True)),
                ('city', models.CharField(max_length=100, null=True)),
                ('state', models.CharField(max_length=100, null=True)),
                ('phone_number', models.CharField(blank=True, max_length=20, null=True)),
                ('email', models.CharField(max_length=100, null=True)),
                ('order_notes', models.TextField()),
                ('subtotal', models.DecimalField(decimal_places=2, max_digits=10, null=True)),
                ('tax', models.DecimalField(decimal_places=2, max_digits=4, null=True)),
                ('packaging', models.DecimalField(decimal_places=2, max_digits=4, null=True)),
                ('total_amount', models.DecimalField(decimal_places=2, max_digits=10, null=True)),
                ('payment_method', models.CharField(max_length=100)),
                ('dispatched', models.BooleanField(default=False)),
                ('order_date', models.DateTimeField(auto_now_add=True, null=True)),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='main.customuser')),
            ],
        ),
        migrations.CreateModel(
            name='Order_Item',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.IntegerField(default=1, null=True)),
                ('price', models.DecimalField(decimal_places=2, max_digits=10, null=True)),
                ('parent_order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.order')),
                ('player', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.player')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.merchandise')),
                ('size', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.merchandise_size')),
            ],
        ),
    ]
