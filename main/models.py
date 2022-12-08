from django.db import models
from django.urls import reverse
from ckeditor.fields import RichTextField
from django.utils.text import slugify
from django.db.models.signals import pre_save
from django.contrib.auth.models import User
from django_countries.fields import CountryField


class article_type(models.Model):
    name = models.CharField(max_length=50)
    css_name = models.CharField(max_length=50, null=True, blank=True)
    category = models.SmallIntegerField(default=1)

    def __str__(self):
        return self.name

class Bayern(models.Model):
    full_name = models.CharField(max_length=100, default='Bayern')
    logo = models.ImageField(default='logos/bayern_logo.png', upload_to='logos', null=True)
    color = models.CharField(max_length=50, null=True)
    alt_color = models.CharField(max_length=50, null=True)
    manager = models.CharField(max_length=100, null=True)
    fb_link = models.CharField(max_length=100, null=True)
    insta_link = models.CharField(max_length=100, null=True)
    twitter_link = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.full_name

class CustomUser(User):
    name_display = models.CharField(max_length=100, null=True)
    profile_pic = models.ImageField(default='user_pfps/default.jpg', upload_to='user_pfps', null=True, blank=True)
    content_creator = models.BooleanField(default=False)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)
    social_link = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return self.name_display

class News_article(models.Model):
    title = models.CharField(max_length=100)
    news_type = models.ForeignKey(article_type, on_delete=models.CASCADE)
    author = models.ForeignKey(CustomUser, on_delete=models.CASCADE, blank=True, null=True)
    image = models.ImageField(upload_to='uploads')
    post_content = RichTextField()
    added = models.DateTimeField(auto_now_add=True, null=True)
    updated = models.DateTimeField(auto_now=True, null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)
    views = models.IntegerField(default=0, null=True, blank=True)
    excerpt = models.TextField(null=True)
    featured = models.BooleanField(default=False)

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
    match_title = models.CharField(max_length=100, null=True, blank=True)
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

    pass_acc = models.DecimalField(decimal_places=1, max_digits=3, null=True, default=0)
    shot_acc = models.DecimalField(decimal_places=1, max_digits=3, null=True, default=0)
    offsides = models.IntegerField(null=True, default=0)
    fouls = models.IntegerField(null=True, default=0)
    shots = models.IntegerField(null=True, default=0)
    shots_target = models.IntegerField(null=True, default=0)
    yellows = models.IntegerField(null=True, default=0)
    reds = models.IntegerField(null=True, default=0)
    corners = models.IntegerField(null=True, default=0)
    saves = models.IntegerField(null=True, default=0)
    possession = models.DecimalField(decimal_places=1, max_digits=3, null=True)

    pass_acc_opp = models.DecimalField(decimal_places=1, max_digits=3, null=True, default=0)
    shot_acc_opp = models.DecimalField(decimal_places=1, max_digits=3, null=True, default=0)
    offsides_opp = models.IntegerField(null=True, default=0)
    fouls_opp = models.IntegerField(null=True, default=0)
    shots_opp = models.IntegerField(null=True, default=0)
    shots_target_opp = models.IntegerField(null=True, default=0)
    yellows_opp = models.IntegerField(null=True, default=0)
    reds_opp = models.IntegerField(null=True, default=0)
    corners_opp = models.IntegerField(null=True, default=0)
    saves_opp = models.IntegerField(null=True, default=0)

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
    address_1 = models.CharField(max_length=200, null=True, blank=True)
    address_2 = models.CharField(max_length=200, null=True, blank=True)
    postcode = models.BigIntegerField(null=True, blank=True)
    city = models.CharField(max_length=100, null=True)
    state = models.CharField(max_length=100, null=True)
    phone_number = models.CharField(max_length=20, null=True, blank=True)
    email = models.CharField(max_length=100, null=True)

    def __str__(self):
        return str(self.user.username) + "-" + str(self.address_type)
    
class Merchandise_Type(models.Model):
    name = models.CharField(max_length=100, null=True)
    size_option = models.BooleanField(default=False, null=True)
    unique_player = models.BooleanField(default=False, null=True)

    def __str__(self):
        return self.name
    
class Merchandise(models.Model):
    name = models.CharField(max_length=100, null=True)
    category = models.ForeignKey(Merchandise_Type, on_delete=models.CASCADE, null=True)

    featured_image = models.ImageField(default='shop/product_default.jpg', upload_to='shop', null=True)
    price = models.DecimalField(decimal_places=2, max_digits=10, null=True)
    discount = models.IntegerField()
    description = models.TextField(null=True)
    product_information = RichTextField(null=True)
    slug = models.SlugField(default='', max_length=500, null=True, blank=True)

    def __str__(self):
        return self.name
    
class Merchandise_Image(models.Model):
    product = models.ForeignKey(Merchandise, on_delete=models.CASCADE)
    image_url = models.ImageField(default='shop/product_default.jpg', upload_to='shop', null=True)

class Merchandise_Size(models.Model):
    product = models.ForeignKey(Merchandise_Type, on_delete=models.CASCADE)
    size = models.CharField(max_length=100, null=True)
    def __str__(self):
        return self.size
    

class Merchandise_Information(models.Model):
    product = models.ForeignKey(Merchandise, on_delete=models.CASCADE)
    specification = models.CharField(max_length=100)
    detail = models.CharField(max_length=100)

    
class Order(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, null=True)
    first_name = models.CharField(max_length=100, null=True)
    last_name = models.CharField(max_length=100, null=True)
    company = models.CharField(max_length=100, null=True)
    country = CountryField(blank_label='(select country)', null=True)
    address_1 = models.CharField(max_length=200, null=True, blank=True)
    address_2 = models.CharField(max_length=200, null=True, blank=True)
    postcode = models.BigIntegerField(null=True, blank=True)
    city = models.CharField(max_length=100, null=True)
    state = models.CharField(max_length=100, null=True)
    phone_number = models.CharField(max_length=20, null=True, blank=True)
    email = models.CharField(max_length=100, null=True)

    order_notes = models.TextField()
    subtotal = models.DecimalField(decimal_places=2, max_digits=10, null=True)
    tax = models.DecimalField(decimal_places=2, max_digits=4, null=True)
    packaging = models.DecimalField(decimal_places=2, max_digits=4, null=True)
    total_amount = models.DecimalField(decimal_places=2, max_digits=10, null=True)
    payment_method = models.CharField(max_length=100)
    dispatched = models.BooleanField(default=False)
    order_date = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return str(self.user.name_display) + "-" + str(self.total_amount)

class Order_Item(models.Model):
    parent_order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Merchandise, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1, null=True)
    price = models.DecimalField(decimal_places=2, max_digits=10, null=True)
    player = models.ForeignKey(Player, on_delete=models.CASCADE, null=True, blank=True)
    size = models.ForeignKey(Merchandise_Size, on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return self.parent_order.user.username + self.product.name + str(self.quantity)

class Comment(models.Model):
    parent_news = models.ForeignKey(News_article, on_delete=models.CASCADE)
    parent_comment = models.ForeignKey('self', on_delete=models.CASCADE, blank=True, null=True)
    from_user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    added = models.DateTimeField(auto_now_add=True, null=True)
    text = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.from_user.username + "_" + self.parent_news.title
    