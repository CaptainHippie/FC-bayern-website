from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from cart.cart import Cart
from django.core.files.storage import FileSystemStorage
from django.utils import timezone
from django.db.models import Count, Max, Min
from . models import *
from . import calculations
from . forms import News_Article_Form
from cart.context_processor import cart_total_amount
from django.http import Http404

def HOME(request):
    featured_news = News_article.objects.filter(featured=True).order_by('-added')
    last_match = Match.objects.filter(finished=True).order_by('-time').first()
    events = Match_timeline.objects.filter(match=last_match).order_by('minute')
    league_stats_widget = Club_season_stats.objects.filter(competition__name="BundesLiga").order_by('-points','-goal_diff','-scored')

    current_time = timezone.now()
    upcoming_match = Match.objects.filter(time__gte = current_time).order_by('time').first()
    time_left = calculations.get_time_difference(upcoming_match.time - current_time) if upcoming_match else None

    context = {
            'featured_news' : featured_news,
            'last_match' : last_match,
            'events' : events,
            'league_stats_widget' : league_stats_widget,
            'upcoming_match': upcoming_match,
            'time_left': time_left
    }
    return render(request, 'home.html', context)

def NEWS(request, slug):
    post = get_object_or_404(News_article, slug=slug)

    if post:
        post.views += 1
        post.save()
    
    comments = Comment.objects.filter(parent_comment=None, parent_news=post).order_by('-added')
    comment_count = Comment.objects.filter(parent_news=post).count()
    
    tags = News_Tag.objects.filter(news_article=post.id)
    related_news = News_article.objects.filter(related_news=post.id)

    context = {
            'post': post,
            'comments':comments,
            'comment_count': comment_count,
            'all_tags': tags,
            'related_news': related_news
    }
    return render(request, 'news.html', context)

def MATCH_DETAIL(request, slug_name):
    match = get_object_or_404(Match, slug=slug_name)
    events = Match_timeline.objects.filter(match=match).order_by('minute')
    related_tags = News_Tag.objects.filter(match=match.id)
    related_news = News_article.objects.filter(match=match.id)

    context = {
            'match': match,
            'events': events,
            'all_tags': related_tags,
            'related_news': related_news
    }
    return render(request, 'match_details.html', context)

def PLAYER_DETAIL(request, slug_name):
    player = get_object_or_404(Player, slug=slug_name)
    all_league_stats = Player_Stats.objects.filter(player__slug=slug_name, competition__name="BundesLiga").order_by('-season__start_year')
    ucl_stats = Player_Stats.objects.filter(player__slug=slug_name, competition__name="UEFA Champions League").order_by('-season__start_year')
    pokal_stats = Player_Stats.objects.filter(player__slug=slug_name, competition__name="DFB Pokal").order_by('-season__start_year')

    total_league_stats = calculations.get_stats_sum(all_league_stats, Player_Stats())
    total_ucl_stats = calculations.get_stats_sum(ucl_stats, Player_Stats())
    total_pokal_stats = calculations.get_stats_sum(pokal_stats, Player_Stats())

    all_seasons = Season.objects.all().order_by('-start_year')
    season_models = calculations.get_season_models(all_seasons, str(slug_name))
    grand_total = calculations.get_stats_sum(season_models, Player_Stats())

    player_news_models = News_article.objects.filter(player_tags=player)
    gallery_images = Player_Image.objects.filter(player__slug=slug_name)
    related_timelines = Timeline.objects.filter(player=player).order_by('-date')

    context = {
            'player': player,
            'all_league_stats': all_league_stats,
            'ucl_stats': ucl_stats,
            'pokal_stats': pokal_stats,
            'league_total': total_league_stats,
            'ucl_total': total_ucl_stats,
            'pokal_total': total_pokal_stats,
            'season_models': season_models,
            'grand_total': grand_total,
            'gallery_images': gallery_images,
            'player_news': player_news_models,
            'all_timelines': related_timelines
    }
    return render(request, 'player.html', context)

def TEAM_DATA(request):
    all_positions = POSITIONS
    all_staff = Staff.objects.exclude(designation__in=("Executive Sporting Director","Head Coach")).order_by('designation')
    head_coach = Staff.objects.filter(designation="Head Coach").first()
    director = Staff.objects.filter(designation="Executive Sporting Director").first() or None
    club_league_stats = Club_season_stats.objects.filter(competition__name="BundesLiga").order_by('-points','-goal_diff','-scored')[0:20]
    club_ucl_stats = Club_season_stats.objects.filter(competition__name="UEFA Champions League").order_by('-points','-goal_diff','-scored')[0:6]
    club_pokal_stats = Club_season_stats.objects.filter(competition__name="DFB Pokal").order_by('-points','-goal_diff','-scored')
    all_albums = Club_Album.objects.all()

    finished_matches = Match.objects.filter(finished=True).order_by('-time')[0:10]

    current_time = timezone.now()
    scheduled_matches = Match.objects.filter(time__gte = current_time).order_by('time')[0:10]

    context = {
            'all_positions': all_positions,
            'all_staff': all_staff,
            'director': director,
            'head_coach': head_coach,
            'club_league_stats': club_league_stats,
            'club_ucl_stats': club_ucl_stats,
            'club_pokal_stats': club_pokal_stats,
            'finished_matches' : finished_matches,
            'scheduled_matches': scheduled_matches,
            'all_albums': all_albums
    }
    return render(request, 'team.html', context)


def CLUB_HISTORY(request):
    membership_articles = Mini_Articles.objects.filter(category="mem")
    venues = Mini_Articles.objects.filter(category="venue")

    ceo = Board_Member.objects.filter(board_type="ag", designation="Chief Executive Officer").first()
    ag_members = Board_Member.objects.filter(board_type="ag").exclude(designation="Chief Executive Officer")
    president = Board_Member.objects.filter(board_type="ev", designation="President").first()
    ev_members = Board_Member.objects.filter(board_type="ev").exclude(designation="President")

    trophies = Trophies.objects.all().order_by('priority','-count')

    honourary_members = Mini_Articles.objects.filter(category="past_mem")
    milestones = Mini_Articles.objects.filter(category="milestone")
    hall_of_famers = Mini_Articles.objects.filter(category="hof")
    partners = Sponsor.objects.all()

    all_partner_types = PARTNER_TYPE
    context = {
            'membership_articles' : membership_articles,
            'venues' : venues,
            'ceo' : ceo,
            'president' : president,
            'ag_members' : ag_members,
            'ev_members' : ev_members, 
            'all_trophies' : trophies,
            'honourary_members' : honourary_members,
            'milestones' : milestones,
            'hall_of_famers' : hall_of_famers,
            'all_partner_types' : all_partner_types,
            'partners' : partners
    }
    return render(request, 'club.html', context)


def STAFF(request, slug_name):
    staff = get_object_or_404(Staff, slug=slug_name)
    related_news = News_article.objects.filter(staff_tags=staff)
    related_timelines = Timeline.objects.filter(staff=staff).order_by('-date')

    context = {
            'staff' : staff,
            'related_news': related_news,
            'all_timelines': related_timelines
    }
    return render(request, 'staff.html', context)


def BOARD_MEMBER(request, slug_name):
    officer = get_object_or_404(Board_Member, slug=slug_name)
    context = {
            'officer' : officer
    }
    return render(request, 'board_member.html', context)

def MINI_ARTICLE(request, slug_name):
    article = get_object_or_404(Mini_Articles, slug=slug_name)
    context = {
            'article' : article
    }
    return render(request, 'mini_article.html', context)

def ALBUM(request, slug_name):
    all_images = Album_Image.objects.filter(parent_album__slug=slug_name)
    context = {
            'all_images' : all_images
    }
    return render(request, 'album.html', context)

@login_required(login_url='custom_login')
def ACCOUNT(request, slug_name):
    logged_user = get_object_or_404(CustomUser, id=request.user.id)
    all_orders = Order.objects.filter(user__slug=slug_name)
    billing_address = Address.objects.filter(user=logged_user, address_type="billing").first()
    shipping_address = Address.objects.filter(user=logged_user, address_type="shipping").first()
    
    if 'save_account_details' in request.POST:
        username = request.POST.get('account_username')
        f_name = request.POST.get('account_first_name')
        l_name = request.POST.get('account_last_name')
        d_name = request.POST.get('account_display_name')
        email = request.POST.get('account_email')
        social = request.POST.get('social_media_link')
        cur_pass = request.POST.get('password_current')
        new_pass = request.POST.get('password_1')
        conf_pass = request.POST.get('password_2')
        user = CustomUser.objects.get(slug=slug_name)
        
        if user:
            user.username = username
            user.first_name = f_name
            user.last_name = l_name
            user.name_display = d_name
            user.email = email
            user.social_link = social
            request_file = request.FILES['profile_pic'] if 'profile_pic' in request.FILES else None
            if request_file:
                upload = request.FILES['profile_pic']
                fss = FileSystemStorage()
                path = 'user_pfps/' + str(upload.name)
                fss.save(path, upload)
                user.profile_pic = path
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
    
    context = {
            'all_orders' : all_orders,
            'billing_address' : billing_address,
            'shipping_address' : shipping_address
    }
    if slug_name == logged_user.slug:
        return render(request, 'account.html', context)
    else:
        raise Http404()

@login_required(login_url='custom_login')
def ADDRESS(request, slug_name, addr_type):
    if addr_type != "billing" and addr_type != "shipping":
        raise Http404()
    logged_user = get_object_or_404(CustomUser, slug=slug_name)
    current_address_set = logged_user.address_set.filter(address_type=addr_type).first()
    context = {
        'address_type': addr_type,
        'current_address': current_address_set
    }
    
    if request.method == 'POST':
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        company = request.POST.get('company')
        country = request.POST.get('country')
        address_1 = request.POST.get('address_1')
        address_2 = request.POST.get('address_2')
        postcode = request.POST.get('postcode')
        city = request.POST.get('city')
        state = request.POST.get('state')
        phone = request.POST.get('phone')
        email = request.POST.get('email')

        if not current_address_set.exists():
            current_address = Address()
        else:
            current_address = current_address_set.first()
        current_address.address_type = addr_type
        current_address.first_name = first_name
        current_address.last_name = last_name
        current_address.company = company
        current_address.country = country
        current_address.user_id = logged_user.id
        current_address.city = city
        current_address.email = email
        current_address.phone_number = phone
        current_address.postcode = postcode
        current_address.state = state
        current_address.address_1 = address_1
        current_address.address_2 = address_2
        current_address.save()
        messages.success(request,"Address Updated successfully")
        return redirect('account', slug_name=logged_user.slug)

    return render(request, 'address.html', context)

def REG_LOGIN(request):
    if 'register' in request.POST:
        email = request.POST.get('email')
        password = request.POST.get('password')
        if CustomUser.objects.filter(email=email).exists():
            messages.error(request,"email already registered. Login or use a different email")
            return redirect('custom_login')
        user = CustomUser()
        user.username = email
        user.email = email
        user.name_display = email
        user.slug = calculations.slugify_email(email)
        user.set_password(password)
        user.save()
        messages.success(request,"user registered successfully")
        return redirect('custom_login')

    if 'login' in request.POST:
        uname_or_email = request.POST.get('username')
        password = request.POST.get('password')
        rememberme = request.POST.get('rememberme')

        customuser = None
        user_auth = None
        if CustomUser.objects.filter(username=uname_or_email).exists():
            customuser = CustomUser.objects.get(username=uname_or_email)
            user_auth = authenticate(request, username=uname_or_email, password=password)
        elif CustomUser.objects.filter(email=uname_or_email).exists():
            customuser = CustomUser.objects.get(email=uname_or_email)
            user_auth = authenticate(request, username=customuser.username, password=password)
        else:
            messages.error(request, 'invalid username or email not registered!')
            return redirect('custom_login')

        if user_auth is not None:
            login(request, user_auth)
            if rememberme == "forever":
                response = redirect('account', slug_name=customuser.slug)  # django.http.HttpResponse
                response.set_cookie(key='uname_email', value=uname_or_email)
                response.set_cookie(key='rem_pass', value=password)
                return response
            return redirect('account', slug_name=customuser.slug)
        else:
            messages.error(request, 'Invalid password!')
            return redirect('custom_login')
    if request.COOKIES.get('uname_email'):
        context = {
            'rem_user': request.COOKIES['uname_email'],
            'rem_pword': request.COOKIES['rem_pass']
        }
        return render(request, 'registration/login.html', context)
    return render(request, 'registration/login.html')

@login_required(login_url='custom_login')
def LOGOUT(request):
    logout(request)
    return redirect('custom_login')


def SHOP(request, cat=None):
    all_products = Merchandise.objects.filter(category__name=cat) if cat else Merchandise.objects.all()
    all_categories = Merchandise_Type.objects.all()
    min_price = all_products.aggregate(Min('price'))
    max_price = all_products.aggregate(Max('price'))

    min_rounded, max_rounded = calculations.round_min_max_price(min_price['price__min'], max_price['price__max'])

    sort = request.GET['orderby'] if ('orderby' in request.GET) else None
    price_min = (int(request.GET['min_price']) if (request.GET['min_price'] != "") else None) if ('min_price' in request.GET) else None
    price_max = (int(request.GET['max_price']) if (request.GET['max_price'] != "") else None) if ('max_price' in request.GET) else None

    if all_products.exists():
        if price_min != None:
            all_products = all_products.filter(price__gte=price_min)
        if price_max != None:
            all_products = all_products.filter(price__lte=price_max)
        if sort != None:
            if sort == "date":
                all_products = all_products.order_by('-added')
            elif sort == "price":
                all_products = all_products.order_by('price','-discount')
            elif sort == "price_desc":
                all_products = all_products.order_by('-price','discount')
            elif sort == "popularity":
                all_products = calculations.sort_by_popularity()
    
    product_count = len(all_products) if isinstance(all_products, list) else all_products.count()
    product_per_page = 12
    extra_pages_count = ((int(product_count/product_per_page)-1) if ((product_count%product_per_page)==0) else int(product_count/product_per_page)) if (product_count>product_per_page) else 0

    context = {
            'all_products' : all_products,
            'all_categories' : all_categories,
            'min_rounded' : min_rounded,
            'max_rounded' : max_rounded,
            'active_category': cat,
            'pages_count' : extra_pages_count,
            'all_products_count' : product_count
    }
    return render(request, 'shop.html', context)

def PRODUCT(request, slug_name):
    product = get_object_or_404(Merchandise, slug=slug_name)
    all_players = Player.objects.all().order_by('kit_no')
    if request.method == 'POST':
        cur_cart = Cart(request)
        pl_id = request.POST['kit_select'] if ('kit_select' in request.POST) else None
        pl_id = int(pl_id) if (pl_id != "" and pl_id != None) else None
        size_id = request.POST['size_select'] if ('size_select' in request.POST) else None
        size_id = int(size_id) if (size_id != "" and size_id != None) else None
        qty = int(request.POST['quantity'])
        cur_cart.add(size=size_id, player=pl_id, product=product, quantity=qty)
        messages.success(request,"cart updated!")
        return redirect("cart")
    context = {
            'product' : product,
            'all_players' : all_players
    }
    return render(request, 'product_detail.html', context)

def cart_add(request, size, player, id):
    cart = Cart(request)
    product = Merchandise.objects.get(id=id)
    if request.method == 'POST':
        qty = int(request.POST['qty'])
        cart.add(size, player, product=product, quantity=qty)
    else:
        cart.add(size, player, product=product)
    return redirect("cart")

def item_clear(request, id):
    cart = Cart(request)
    product = Merchandise.objects.get(id=id)
    cart.remove(product)
    return redirect("cart")

def item_increment(request, size, player, id, qty=1):
    cart = Cart(request)
    product = Merchandise.objects.get(id=id)
    cart.add(size, player, product=product, quantity=qty)
    return redirect("cart")

def item_decrement(request, id, quantity=1):
    cart = Cart(request)
    product = Merchandise.objects.get(id=id)
    cart.decrement(product=product, qty=quantity)
    return redirect("cart")

def cart_clear(request):
    cart = Cart(request)
    cart.clear()
    return redirect("cart")


def CART(request):
    cart = request.session.get('cart')
    if request.method == 'POST':
        cur_cart = Cart(request)
        for key in cart.copy():
            product_id = cart[key]['product_id']
            product = Merchandise.objects.get(id=product_id)
            new_qty = int(request.POST['product_id_'+ str(key)])
            cur_qty = int(cart[key]['quantity'])
            if new_qty > cur_qty:
                cur_cart.add(size=cart[key]['size'], player=cart[key]['player'], product=product, quantity=(new_qty-cur_qty))
            if new_qty < cur_qty:
                cur_cart.decrement(product=product, qty=(cur_qty-new_qty))
            if new_qty < 1:
                cur_cart.remove(product)
        messages.success(request,"cart updated!")
        return redirect("cart")
    return render(request, 'cart.html')

@login_required(login_url='custom_login')
def ORDER(request, slug_name, order_id):
    current_order = get_object_or_404(Order, id=order_id)
    context = {
            'order' : current_order,
    }

    return render(request, 'orders.html', context)

@login_required(login_url='custom_login')
def CHECKOUT(request):
    logged_user_id = request.user.id if request.user.is_authenticated else None
    logged_user = CustomUser.objects.filter(id=logged_user_id).first() if logged_user_id else None
    has_billing_address = hasattr(logged_user,  'address_set') if logged_user else None
    billing_address = logged_user.address_set.filter(address_type="billing") if has_billing_address else None

    if request.method == 'POST':
        cart_at_checkout = request.session.get('cart')
        new_order = Order()
        new_order.first_name = request.POST.get('billing_first_name')
        new_order.last_name = request.POST.get('billing_last_name')
        new_order.company = request.POST.get('billing_company')
        new_order.country = request.POST.get('billing_country')
        new_order.address_1 = request.POST.get('billing_address_1')
        new_order.address_2 = request.POST.get('billing_address_2')
        new_order.postcode = int(request.POST.get('billing_postcode'))
        new_order.city = request.POST.get('billing_city')
        new_order.state = request.POST.get('billing_state')
        new_order.phone_number = request.POST.get('billing_phone')
        new_order.email = request.POST.get('billing_email')
        new_order.order_notes = request.POST.get('order_comments')
        new_order.payment_method = request.POST.get('payment_method')

        cart_totals = cart_total_amount(request)

        new_order.subtotal = cart_totals['cart_total_amount']
        new_order.packaging = cart_totals['delivery']
        new_order.total_amount = cart_totals['order_total']
        new_order.user_id = logged_user.id
        new_order.save()
        last_order_id = Order.objects.latest('id').id
        for key in cart_at_checkout.copy():
            new_order_item = Order_Item()
            new_order_item.product_id = cart_at_checkout[key]['product_id']
            new_order_item.parent_order_id = last_order_id
            new_order_item.quantity = cart_at_checkout[key]['quantity']
            new_order_item.price = cart_at_checkout[key]['price']
            new_order_item.size_id = None if cart_at_checkout[key]['size'] == 0 else cart_at_checkout[key]['size']
            new_order_item.player_id = None if cart_at_checkout[key]['player'] == 0 else cart_at_checkout[key]['player']
            new_order_item.save()
        cart = Cart(request)
        cart.clear()
        messages.success(request,"Order placed succesfully!")
        return redirect("account", slug_name=logged_user.slug)
    context = {
        'billing_address' : billing_address,
    }
    return render(request, 'checkout.html', context)

@login_required(login_url='custom_login')
def save_comment(request, user_id):
    new_comment = Comment()
    current_news_id = request.POST.get('comment_post_ID')
    new_comment.parent_news_id = current_news_id
    new_comment.parent_comment_id = request.POST['comment_parent'] if 'comment_parent' in request.POST else None
    new_comment.from_user_id = user_id
    new_comment.text = request.POST.get('comment_text')
    new_comment.save()
    current_news = News_article.objects.get(id=current_news_id)
    return redirect('newspage', slug=current_news.slug)

news_sort={ 'time':'added','title':'title','views':'views','likes':'liked','comments':'comment',
        'asc':'','desc':'-'
    }

def ALL_NEWS(request):
    all_news = News_article.objects.all().order_by('-added')
    all_authors = CustomUser.objects.annotate(num_articles=Count('author')).filter(num_articles__gt = 0)
    categories = request.GET['cat'] if ('cat' in request.GET) else None
    sort = request.GET['sort'] if ('sort' in request.GET) else None
    order = request.GET['order'] if ('order' in request.GET) else None
    author = request.GET['author'] if ('author' in request.GET) else None
    article_types = article_type.objects.all()

    if all_news.exists():
        if (categories != None) and (categories != ""):
            all_news = all_news.filter(news_type__css_name=categories)
        if (author != None) and (author != ""):
            all_news = all_news.filter(author__id=author)
        if (sort != None):
            if sort == "likes":
                like_query = news_sort[order] + "like_count"
                all_news = all_news.annotate(like_count=Count(news_sort[sort])).order_by(like_query)
            elif sort == "comments":
                cmt_query = news_sort[order] + "cmt_count"
                all_news = all_news.annotate(cmt_count=Count(news_sort[sort])).order_by(cmt_query)
            else:
                filter_cmd = news_sort[order] + news_sort[sort]
                all_news = all_news.order_by(filter_cmd)

    news_count = all_news.count()
    news_per_page = 10
    extra_pages_count = ((int(news_count/news_per_page)-1) if ((news_count%news_per_page)==0) else int(news_count/news_per_page)) if (news_count>news_per_page) else 0
    context = {
        'article_types': article_types,
        'all_news': all_news,
        'all_authors': all_authors,
        'pages_count': extra_pages_count
    }
    return render(request, 'all_news.html', context)

def NEWS_BY_TAGS(request, tag_name):
    all_tags = News_Tag.objects.annotate(news_count=Count('news_article')).order_by('-news_count','name')
    tag = get_object_or_404(News_Tag, name=tag_name)
    all_news = News_article.objects.filter(tags=tag.id).order_by('-added')

    news_count = all_news.count()
    news_per_page = 10
    extra_pages_count = ((int(news_count/news_per_page)-1) if ((news_count%news_per_page)==0) else int(news_count/news_per_page)) if (news_count>news_per_page) else 0
    context = {
        'all_news': all_news,
        'pages_count': extra_pages_count,
        'all_tags': all_tags,
        'tag': tag
    }
    return render(request, 'news_by_tags.html', context)

def CONTACT_US(request):
    return render(request, 'contact_us.html')

def Like_Unlike_Btn(request, uid, pid):
    user = CustomUser.objects.filter(id=uid).first()
    post = News_article.objects.filter(id=pid).first()
    like, created = Likes.objects.get_or_create(user=user, post_id=pid)

    if user in post.liked.all():
        post.liked.remove(user)
        like.value = False if like else None
    else:
        post.liked.add(user)
        like.value = True if like else None
    like.save()
    return redirect(request.META['HTTP_REFERER'])
    
@login_required(login_url='custom_login')
def BOOK_TICKET(request, slug_name):
    cur_match = get_object_or_404(Match, slug=slug_name)
    related_tags = News_Tag.objects.filter(match=cur_match.id)
    related_news = News_article.objects.filter(match=cur_match.id)

    if cur_match.booking_open == False:
        return redirect(request.META['HTTP_REFERER'])
    logged_user = request.user if request.user.is_authenticated else None
    tickets_brought = Sold_Ticket.objects.filter(who=logged_user, match__match__slug = slug_name)
    tickets = 0
    for ticket in tickets_brought:
        tickets += ticket.quantity

    allowed_tickets = 10 - tickets if tickets < 10 else 0
    context = {
            'match': cur_match,
            'seat_category': SEAT_CATEGORY,
            'allowed_tickets': allowed_tickets,
            'all_tags': related_tags,
            'related_news': related_news
    }
    return render(request, 'book_tickets.html', context)

def BUY_TICKET(request, slug_name):
    seat_type = request.POST.get('seat_type')
    quantity = request.POST.get('quantity')
    total = request.POST.get('total')
    logged_user_id = request.user.id if request.user.is_authenticated else None
    logged_user = CustomUser.objects.filter(id=logged_user_id).first() if logged_user_id else None
    tickets_brought = Sold_Ticket.objects.filter(who=logged_user, match__match__slug = slug_name)
    tickets = 0
    for ticket in tickets_brought:
        tickets += ticket.quantity
    if tickets >= 10:
        messages.error(request,"You have already reached your quota for this match!")
        return redirect('book', slug_name=slug_name)

    if seat_type != "" and seat_type != None:
        quantity = int(quantity)
        cur_ticket_collection = Tickets_Collection.objects.get(match__slug = slug_name)

        new_ticket = Sold_Ticket()
        new_ticket.who_id = logged_user.id if logged_user else None
        new_ticket.match_id = cur_ticket_collection.id
        new_ticket.seat_cat = seat_type
        new_ticket.quantity = quantity
        new_ticket.payment_method = request.POST.get('payment_method')
        new_ticket.price = float(total)
        new_ticket.save()
        
        if seat_type == "cat_1":
            cur_ticket_collection.cat_1_seats -= quantity
        elif seat_type == "cat_2":
            cur_ticket_collection.cat_2_seats -= quantity
        elif seat_type == "cat_3":
            cur_ticket_collection.cat_3_seats -= quantity
        elif seat_type == "cat_4":
            cur_ticket_collection.cat_4_seats -= quantity
        else:
            cur_ticket_collection.cat_5_seats -= quantity
        cur_ticket_collection.save()
        messages.success(request,"Ticket booked succesfully!")
    return redirect('book', slug_name=slug_name)

def Send_Contact_form(request):
    new_message = Contact_Us_Request()
    new_message.name = request.POST.get('input-name')
    new_message.email = request.POST.get('input-email')
    new_message.subject = request.POST.get('input-subject')
    new_message.message = request.POST.get('message')
    new_message.save()
    messages.success(request,"Contact Message Sent succesfully!")
    return redirect('contact')

def DOWNLOAD_TICKET(request):
    pass

def ERROR_404(request, exception):
    return render(request, '404.html')

def TEST(request):
    form = News_Article_Form()
    form_post = News_Article_Form(request.POST)
    if form_post.is_valid():
        form_post.save()
        return redirect('test')
    context = {
            'article_form' : form
    }

    return render(request, 'test.html', context)
