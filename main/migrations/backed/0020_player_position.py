# Generated by Django 4.1.2 on 2022-11-04 09:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0019_position_remove_player_position'),
    ]

    operations = [
        migrations.AddField(
            model_name='player',
            name='position',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='main.position'),
        ),
    ]