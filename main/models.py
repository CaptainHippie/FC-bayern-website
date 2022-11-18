from django.db import models
from django.urls import reverse
from ckeditor.fields import RichTextField
from django.utils.text import slugify
from django.db.models.signals import pre_save
from django.contrib.auth.models import User
from django_countries.fields import CountryField


class article_type(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class News_article(models.Model):
    title = models.CharField(max_length=100)
    news_type = models.ForeignKey(article_type, on_delete=models.CASCADE)
    author = models.CharField(max_length=100, null=True)
    image = models.ImageField(upload_to='uploads')
    post_content = RichTextField()
    added = models.DateTimeField(auto_now_add=True, null=True)
    updated = models.DateTimeField(auto_now=True, null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)
    views = models.IntegerField(default=0, null=True, blank=True)
    excerpt = models.TextField(null=True)

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
    logo = models.ImageField(
        default='logos/default_logo.png', upload_to='logos', null=True)
    color = models.CharField(max_length=50, null=True)
    alt_color = models.CharField(max_length=50, null=True)
    manager = models.CharField(max_length=100, null=True)
    league_side = models.BooleanField(default=True)
    ucl_side = models.BooleanField(default=False)
    pokal_side = models.BooleanField(default=False)

    def __str__(self):
        return self.name


class Club_season_stats(models.Model):
    club = models.ForeignKey(Team, on_delete=models.CASCADE, null=True)
    played = models.IntegerField(null=True)
    wins = models.IntegerField(null=True)
    loss = models.IntegerField(null=True)
    draw = models.IntegerField(null=True)
    scored = models.IntegerField(null=True)
    conceded = models.IntegerField(null=True)
    goal_diff = models.IntegerField(null=True)
    points = models.IntegerField(null=True)
    competition = models.ForeignKey(
        Competition, on_delete=models.CASCADE, null=True)

    def __str__(self):
        return str(self.club) + str(self.competition)


class Match(models.Model):
    competition = models.ForeignKey(Competition, on_delete=models.CASCADE)
    venue = models.CharField(max_length=100, null=True)
    opponent = models.ForeignKey(Team, on_delete=models.CASCADE)
    scored = models.IntegerField(null=True)
    conceded = models.IntegerField(null=True)
    at_home = models.BooleanField(default=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)
    time = models.DateTimeField(null=True)
    video_url = models.CharField(max_length=100, null=True)
    summary = models.TextField(null=True)
    banner = models.ImageField(
        default='banners/Allianz_Arena_wide.jpg', upload_to='banners', null=True)

    pass_acc = models.DecimalField(decimal_places=1, max_digits=3, null=True)
    shot_acc = models.DecimalField(decimal_places=1, max_digits=3, null=True)
    offsides = models.IntegerField(null=True)
    fouls = models.IntegerField(null=True)
    shots = models.IntegerField(null=True)
    shots_target = models.IntegerField(null=True)
    yellows = models.IntegerField(null=True)
    reds = models.IntegerField(null=True)
    corners = models.IntegerField(null=True)
    saves = models.IntegerField(null=True)
    possession = models.DecimalField(decimal_places=1, max_digits=3, null=True)

    pass_acc_opp = models.DecimalField(
        decimal_places=1, max_digits=3, null=True)
    shot_acc_opp = models.DecimalField(
        decimal_places=1, max_digits=3, null=True)
    offsides_opp = models.IntegerField(null=True)
    fouls_opp = models.IntegerField(null=True)
    shots_opp = models.IntegerField(null=True)
    shots_target_opp = models.IntegerField(null=True)
    yellows_opp = models.IntegerField(null=True)
    reds_opp = models.IntegerField(null=True)
    corners_opp = models.IntegerField(null=True)
    saves_opp = models.IntegerField(null=True)

    def __str__(self):
        return str(self.opponent) + "_" + str(self.id)


class Nationality(models.Model):
    name = models.CharField(max_length=100)
    flag = models.ImageField(default='flags/Germany.jpg',
                             upload_to='flags', null=True)

    def __str__(self):
        return self.name


class Position(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Player(models.Model):
    name = models.CharField(max_length=100)
    first_name = models.CharField(max_length=100, null=True)
    second_name = models.CharField(max_length=100, null=True)
    kit_no = models.IntegerField(null=True)
    nationality = CountryField(blank_label='(select country)', null=True)
    profile_pic = models.ImageField(
        default='players/player-placeholder-380x570.jpg', upload_to='players', null=True)
    height = models.DecimalField(decimal_places=2, max_digits=3, null=True)
    weight = models.IntegerField(null=True)
    age = models.IntegerField(null=True)
    past_club = models.CharField(max_length=100, null=True)
    position = models.ForeignKey(Position, on_delete=models.CASCADE, null=True)
    born = models.DateField(null=True)
    contract_end = models.DateField(null=True)
    rating = models.DecimalField(decimal_places=1, max_digits=3, null=True)
    profile_banner = models.ImageField(
        default='players/default_banner.jpg', upload_to='players', null=True)
    biography = RichTextField(null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)

    def __str__(self):
        return self.name


class Goalscorers(models.Model):
    name = models.ForeignKey(Player, on_delete=models.CASCADE)
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    minute = models.IntegerField(null=True)


class Opponent_Goalscorers(models.Model):
    name = models.CharField(max_length=100, null=True)
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    minute = models.IntegerField(null=True)


class Match_event(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Match_timeline(models.Model):
    name = models.ForeignKey(Match_event, on_delete=models.CASCADE)
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    homeside = models.BooleanField(default=True)
    minute = models.IntegerField(null=True)
    who = models.CharField(max_length=100, null=True, blank=True)


class Season(models.Model):
    name = models.CharField(max_length=100)
    start_year = models.IntegerField(null=True)

    def __str__(self):
        return self.name


class Player_Stats(models.Model):
    player = models.ForeignKey(Player, on_delete=models.CASCADE)
    season = models.ForeignKey(Season, on_delete=models.CASCADE)
    competition = models.ForeignKey(Competition, on_delete=models.CASCADE)

    apps = models.IntegerField(default=0)
    minutes = models.IntegerField(default=0)
    goals = models.IntegerField(default=0)
    assists = models.IntegerField(default=0)
    yellows = models.IntegerField(default=0)
    reds = models.IntegerField(default=0)
    own_goals = models.IntegerField(default=0)
    fouls = models.IntegerField(default=0)
    offsides = models.IntegerField(default=0)
    ppg = models.DecimalField(decimal_places=2, max_digits=3, default=0)
    win_ratio = models.DecimalField(decimal_places=2, max_digits=3, default=0)
    motm = models.IntegerField(default=0)
    rating = models.DecimalField(decimal_places=2, max_digits=3, default=0)

    def __str__(self):
        return self.player.name + "-" + self.competition.name + "-" + self.season.name


def create_player_slug(instance, new_slug=None):
    slug = slugify(instance.name)
    if new_slug is not None:
        slug = new_slug
    qs = Player.objects.filter(slug=slug).order_by('-id')
    return_slug(slug, qs, instance)
    return slug


def pre_save_post_receiver_player(sender, instance, *args, **kwargs):
    if not instance.slug:
        instance.slug = create_player_slug(instance)


pre_save.connect(pre_save_post_receiver_player, Player)


class Sponsor(models.Model):
    name = models.CharField(max_length=100, null=True)
    url = models.CharField(max_length=100, null=True)
    logo = models.ImageField(
        default='logos/sponsor_default.png', upload_to='logos', null=True)

    def __str__(self):
        return self.name


class Player_Image(models.Model):
    player = models.ForeignKey(Player, on_delete=models.CASCADE)
    image = models.ImageField(
        default='gallery/player/default.png', upload_to='gallery/player', null=True)
    date = models.DateField(null=True)
    description = models.CharField(max_length=300, null=True)


class Staff(models.Model):
    name = models.CharField(max_length=100)
    designation = models.CharField(max_length=100, null=True)
    nationality = CountryField(blank_label='(select country)', null=True)
    profile_pic = models.ImageField(
        default='players/player-placeholder-380x570.jpg', upload_to='players', null=True)
    age = models.IntegerField(null=True)
    previous_post = models.CharField(max_length=100, null=True)
    short_name = models.CharField(max_length=10, null=True)
    born = models.DateField(null=True)
    contract_start = models.DateField(null=True)
    contract_end = models.DateField(null=True)
    biography = RichTextField(null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)

    def __str__(self):
        return self.name


class News_Tag_Player(models.Model):
    news = models.ForeignKey(News_article, on_delete=models.CASCADE)
    player_tag = models.ForeignKey(Player, on_delete=models.CASCADE, null=True)


class News_Tag_Staff(models.Model):
    news = models.ForeignKey(News_article, on_delete=models.CASCADE)
    staff_tag = models.ForeignKey(Staff, on_delete=models.CASCADE, null=True)


class Club_Album(models.Model):
    title = models.CharField(max_length=100, null=True)
    featured_image = models.ImageField(
        default='album/default.jpg', upload_to='album', null=True)
    date = models.DateField(null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)

    def __str__(self):
        return self.title


class Album_Image(models.Model):
    parent_album = models.ForeignKey(
        Club_Album, on_delete=models.CASCADE, null=True)
    image = models.ImageField(
        default='album/default.jpg', upload_to='album', null=True)
    description = models.CharField(max_length=100, null=True)
    date = models.DateField(null=True)


class CustomUser(User):
    name_display = models.CharField(max_length=100, null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)

    def __str__(self):
        return self.name_display


ADDRESS_TYPE = (("billing", "Billing Address"),
                ("shipping", "Shipping Address"))


class Address(models.Model):
    address_type = models.CharField(
        max_length=30, choices=ADDRESS_TYPE, default='billing')
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, null=True)
    first_name = models.CharField(max_length=100, null=True)
    last_name = models.CharField(max_length=100, null=True)
    company = models.CharField(max_length=100, null=True)
    country = CountryField(blank_label='(select country)')
    address = models.TextField(null=True)
    postcode = models.BigIntegerField(null=True, blank=True)
    city = models.CharField(max_length=100, null=True)
    phone_number = models.CharField(max_length=20, null=True, blank=True)
    email = models.CharField(max_length=100, null=True)

    def __str__(self):
        return str(self.user.username) + "-" + str(self.address_type)
    