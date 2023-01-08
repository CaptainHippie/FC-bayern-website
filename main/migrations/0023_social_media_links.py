# Generated by Django 4.1.4 on 2023-01-08 15:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0022_alter_timeline_player_alter_timeline_staff'),
    ]

    operations = [
        migrations.CreateModel(
            name='Social_Media_Links',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('insta_link', models.CharField(blank=True, max_length=150, null=True)),
                ('twitter_link', models.CharField(blank=True, max_length=150, null=True)),
                ('fb_link', models.CharField(blank=True, max_length=150, null=True)),
                ('player', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.player')),
                ('staff', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.staff')),
            ],
        ),
    ]
