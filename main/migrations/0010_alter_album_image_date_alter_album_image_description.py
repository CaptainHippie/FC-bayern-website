# Generated by Django 4.1.4 on 2023-01-05 19:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0009_alter_album_image_image_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='album_image',
            name='date',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='album_image',
            name='description',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]