# Generated by Django 4.1.2 on 2022-11-09 08:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0049_news_tag_staff_tag_alter_news_tag_player_tag'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='News_Tag',
            new_name='News_Tag_Player',
        ),
        migrations.RemoveField(
            model_name='staff',
            name='profile_banner',
        ),
    ]
