# Generated by Django 4.1.4 on 2022-12-19 16:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0017_alter_news_article_image_url'),
    ]

    operations = [
        migrations.AddField(
            model_name='sponsor',
            name='kind',
            field=models.CharField(choices=[('main', 'Main Partner & Shareholder'), ('platinum', 'Platinum Partner'), ('gold', 'Gold Partner'), ('official', 'Official Partner'), ('regional', 'Regional Partner')], default='official', max_length=30),
        ),
        migrations.AddField(
            model_name='sponsor',
            name='logo_white',
            field=models.ImageField(default='logos/sponsor_default_white.png', null=True, upload_to='logos'),
        ),
    ]
