from django.db import models
from django.urls import reverse
from ckeditor.fields import RichTextField
from django.utils.text import slugify
from django.db.models.signals import pre_save


class article_type(models.Model):
    name = models.CharField(max_length=50)
    def __str__(self):
        return self.name
    
class News_article(models.Model):
    title = models.CharField(max_length=100)
    news_type = models.ForeignKey(article_type, on_delete = models.CASCADE)
    author = models.CharField(max_length=100, null=True)
    image = models.ImageField(upload_to='uploads')
    post_content = RichTextField()
    added = models.DateTimeField(auto_now_add=True, null = True)
    updated = models.DateTimeField(auto_now=True, null = True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)
    views = models.IntegerField(default=0, null=True, blank=True)

    def __str__(self):
        return self.title
    
    def get_absolute_url(self):
        return reverse("newspage", kwargs={'slug': self.slug})

def return_slug(slug, qs, instance):
    exists = qs.exists()
    if exists:
        new_slug = "%s-%s" % (slug, qs.first().id)
        return create_slug(instance, new_slug=new_slug)

def create_slug(instance, new_slug=None):
    slug = slugify(instance.title)
    if new_slug is not None:
        slug = new_slug
    qs = News_article.objects.filter(slug=slug).order_by('-id')
    return_slug(slug, qs, instance)
    return slug

def pre_save_post_receiver(sender, instance, *args, **kwargs):
    if not instance.slug:
        instance.slug = create_slug(instance)

pre_save.connect(pre_save_post_receiver, News_article)

class Competition(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name
    
class Team(models.Model):
    name = models.CharField(max_length=100)
    logo = models.ImageField(default='logos/default_logo.png',upload_to='logos', null = True)
    color = models.CharField(max_length=50, null = True)
    alt_color = models.CharField(max_length=50, null = True)
    manager = models.CharField(max_length=100, null = True)

    def __str__(self):
        return self.name

class Match(models.Model):
    competition = models.ForeignKey(Competition, on_delete = models.CASCADE)
    venue = models.CharField(max_length=100, null = True)
    opponent = models.ForeignKey(Team, on_delete = models.CASCADE)
    scored = models.IntegerField(null = True)
    conceded = models.IntegerField(null = True)
    at_home = models.BooleanField(default = True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)
    time = models.DateTimeField(null = True)
    video_url = models.CharField(max_length=100, null=True)
    summary = models.TextField(null=True)
    banner = models.ImageField(default='banners/Allianz_Arena_wide.jpg',upload_to='banners', null = True)

    pass_acc = models.DecimalField(decimal_places=1, max_digits=3, null = True)
    shot_acc = models.DecimalField(decimal_places=1, max_digits=3, null = True)
    offsides = models.IntegerField(null = True)
    fouls = models.IntegerField(null = True)
    shots = models.IntegerField(null = True)
    shots_target = models.IntegerField(null = True)
    yellows = models.IntegerField(null = True)
    reds = models.IntegerField(null = True)
    corners = models.IntegerField(null = True)
    saves = models.IntegerField(null = True)
    possession = models.DecimalField(decimal_places=1, max_digits=3, null = True)

    pass_acc_opp = models.DecimalField(decimal_places=1, max_digits=3, null = True)
    shot_acc_opp = models.DecimalField(decimal_places=1, max_digits=3, null = True)
    offsides_opp = models.IntegerField(null = True)
    fouls_opp = models.IntegerField(null = True)
    shots_opp = models.IntegerField(null = True)
    shots_target_opp = models.IntegerField(null = True)
    yellows_opp = models.IntegerField(null = True)
    reds_opp = models.IntegerField(null = True)
    corners_opp = models.IntegerField(null = True)
    saves_opp = models.IntegerField(null = True)

    def __str__(self):
        return str(self.opponent) + "_" + str(self.id)
    
class Player(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name
    
class Goalscorers(models.Model):
    name = models.ForeignKey(Player, on_delete = models.CASCADE)
    match = models.ForeignKey(Match, on_delete = models.CASCADE)
    minute = models.IntegerField(null = True)

class Opponent_Goalscorers(models.Model):
    name = models.CharField(max_length=100, null = True)
    match = models.ForeignKey(Match, on_delete = models.CASCADE)
    minute = models.IntegerField(null = True)

class Match_event(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name
    
class Match_timeline(models.Model):
    name = models.ForeignKey(Match_event, on_delete = models.CASCADE)
    match = models.ForeignKey(Match, on_delete = models.CASCADE)
    homeside = models.BooleanField(default = True)
    minute = models.IntegerField(null = True)
    who = models.CharField(max_length=100, null=True, blank=True)
