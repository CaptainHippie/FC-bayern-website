from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate
from . models import *
from . import calculations

# Create your views here.
def index(request):
    popular_news = News_article.objects.all().order_by('-views')[0:4]
    newest_news = News_article.objects.all().order_by('-added')[0:4]
    favourite_news = News_article.objects.all().order_by('-added')[0:4]
    context = {
            'popular_news': popular_news,
            'newest_news' : newest_news,
            'favourite_news' : favourite_news
    }
    return render(request, 'home.html', context)

def NEWS(request, slug):
    post = News_article.objects.filter(slug = slug)
    popular_news = News_article.objects.all().order_by('-views')[0:4]
    newest_news = News_article.objects.all().order_by('-added')[0:4]
    favourite_news = News_article.objects.all().order_by('-added')[0:4]
    if post.exists():
        post = News_article.objects.get(slug = slug)
    else:
        return redirect('home')
    post.views = post.views + 1
    post.save()
    context = {
            'post': post,
            'popular_news': popular_news,
            'newest_news' : newest_news,
            'favourite_news' : favourite_news
    }
    return render(request, 'news.html', context)

def MATCH_DETAIL(request):
    popular_news = News_article.objects.all().order_by('-views')[0:4]
    newest_news = News_article.objects.all().order_by('-added')[0:4]
    favourite_news = News_article.objects.all().order_by('-added')[0:4]
    match = Match.objects.get(id = 1)
    events = Match_timeline.objects.order_by('minute')
    context = {
            'match': match,
            'events': events,
            'popular_news': popular_news,
            'newest_news' : newest_news,
            'favourite_news' : favourite_news
    }
    return render(request, 'match_details.html', context)

def PLAYER_DETAIL(request, slug_name):
    all_sponsors = Sponsor.objects.all()

    player = Player.objects.get(slug = slug_name)
    all_league_stats = Player_Stats.objects.filter(player__slug=slug_name, competition__name="BundesLiga").order_by('-season__start_year')
    ucl_stats = Player_Stats.objects.filter(player__slug=slug_name, competition__name="UEFA Champions League").order_by('-season__start_year')
    pokal_stats = Player_Stats.objects.filter(player__slug=slug_name, competition__name="DFB Pokal").order_by('-season__start_year')

    total_league_stats = calculations.get_stats_sum(all_league_stats, Player_Stats())
    total_ucl_stats = calculations.get_stats_sum(ucl_stats, Player_Stats())
    total_pokal_stats = calculations.get_stats_sum(pokal_stats, Player_Stats())

    all_seasons = Season.objects.all().order_by('-start_year')
    season_models = calculations.get_season_models(all_seasons, str(slug_name))
    grand_total = calculations.get_stats_sum(season_models, Player_Stats())

    player_news = News_article.objects.order_by('-added')
    player_news_models = calculations.get_player_news_models(player_news, str(slug_name))

    gallery_images = Player_Image.objects.filter(player__slug=slug_name)
   
    context = {
            'player' : player,
            'all_league_stats' : all_league_stats,
            'ucl_stats' : ucl_stats,
            'pokal_stats' : pokal_stats,
            'league_total' : total_league_stats,
            'ucl_total' : total_ucl_stats,
            'pokal_total' : total_pokal_stats,
            'season_models' : season_models,
            'grand_total' : grand_total,
            'sponsors' : all_sponsors,
            'gallery_images' : gallery_images,
            'player_news' : player_news_models
    }
    return render(request, 'player.html', context)

def CLUB_ROSTER(request):
    all_positions = Position.objects.all()
    all_staff = Staff.objects.exclude(designation="Executive Sporting Director")
    director = Staff.objects.get(designation="Executive Sporting Director")
    club_league_stats = Club_season_stats.objects.filter(competition__name="BundesLiga").order_by('-points','-goal_diff','-scored')[0:20]
    club_ucl_stats = Club_season_stats.objects.filter(competition__name="UEFA Champions League").order_by('-points','-goal_diff','-scored')[0:6]
    club_pokal_stats = Club_season_stats.objects.filter(competition__name="DFB Pokal").order_by('-points','-goal_diff','-scored')
    all_albums = Club_Album.objects.all()

    all_matches = Match.objects.all()
    context = {
            'all_positions': all_positions,
            'all_staff': all_staff,
            'director': director,
            'club_league_stats': club_league_stats,
            'club_ucl_stats': club_ucl_stats,
            'club_pokal_stats': club_pokal_stats,
            'all_matches' : all_matches,
            'all_albums': all_albums
    }
    return render(request, 'roster.html', context)


def STAFF(request, slug_name):
    staff = Staff.objects.get(slug = slug_name)
    staff_news = News_article.objects.order_by('-added')
    staff_news_models = calculations.get_staff_news_models(staff_news, str(slug_name))

    context = {
            'staff' : staff,
            'staff_news_models': staff_news_models
    }
    return render(request, 'staff.html', context)

def ALBUM(request, slug_name):
    all_images = Album_Image.objects.filter(parent_album__slug = slug_name)
    context = {
            'all_images' : all_images
    }
    return render(request, 'album.html', context)

def ACCOUNT(request, slug_name):
    logged_user = CustomUser.objects.get(id = request.session['logged_user_id'])
    context = {
            'logged_user' : logged_user
    }
    if 'save_account_details' in request.POST:
        username = request.POST.get('account_username')
        f_name = request.POST.get('account_first_name')
        l_name = request.POST.get('account_last_name')
        d_name = request.POST.get('account_display_name')
        email = request.POST.get('account_email')
        cur_pass = request.POST.get('password_current')
        new_pass = request.POST.get('password_1')
        conf_pass = request.POST.get('password_2')
        user = CustomUser.objects.get(id = request.session['logged_user_id'])
        
        if user:
            user.username = username
            user.first_name = f_name
            user.last_name = l_name
            user.name_display = d_name
            user.email = email
            user.save()
            messages.success(request,"account information updated successfully")
            if cur_pass != "":
                auth_success = authenticate(request, username=username, password=cur_pass)
                if auth_success:
                    if (new_pass != ""):
                        if new_pass == conf_pass:
                            user.set_password(new_pass)
                            user.save()
                            messages.success(request,"password updated successfully")
                        else:
                            messages.error(request, 'Passwords does not match!')
                    else:
                        messages.error(request, 'Password cannot be blank!')
                else:
                    messages.error(request, 'Invalid Current password!')
        return redirect('account', slug_name=slug_name)
    return render(request, 'account.html', context)

def REG_LOGIN(request):
    if 'register' in request.POST:
        email = request.POST.get('email')
        password = request.POST.get('password')
        if CustomUser.objects.filter(email=email).exists():
            messages.error(request,"email already registered. Login or use a different email")
            return redirect('login')
        user = CustomUser()
        user.username = email
        user.email = email
        user.name_display = email
        user.slug = email
        user.set_password(password)
        user.save()
        messages.success(request,"user registered successfully")
        return redirect('login')

    if 'login' in request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = None
        if CustomUser.objects.filter(username = username).exists():
            user = CustomUser.objects.get(username = username)
        elif CustomUser.objects.filter(email = username).exists():
            user = CustomUser.objects.get(email = username)
        else:
            messages.error(request, 'invalid username or email not registered!')
            return redirect('login')
        user_auth = authenticate(request, username=username, password=password)
        if user_auth is not None:
            request.session['logged_user_id'] =  user.id
            return redirect('account', slug_name=user.slug)
        else:
            messages.error(request, 'Invalid password!')
            return redirect('login')
    return render(request, 'register_login.html')

    '''def login(request, *args, **kwargs):
    if request.method == 'POST':
        if not request.POST.get('remember_me', None):
            request.session.set_expiry(0)
    return auth_views.login(request, *args, **kwargs)
'''

def SHOP(request):
    return render(request, 'shop.html')