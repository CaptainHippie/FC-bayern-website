# Generated by Django 4.1.2 on 2022-11-03 13:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0008_team_alt_color'),
    ]

    operations = [
        migrations.CreateModel(
            name='Opponent_Goalscorers',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, null=True)),
                ('minute', models.IntegerField(null=True)),
                ('match', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.match')),
            ],
        ),
    ]