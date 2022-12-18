from django import template

register = template.Library()

def safe_num(num):
    if isinstance(num, str):
        num = float(num)
    return float('{:.3g}'.format(abs(num)))

def format_number_stack_overflow(num):
    num = safe_num(num)
    magnitude = 0
    while abs(num) >= 1000:
        magnitude += 1
        num /= 1000.0
    return '{}{}'.format('{:f}'.format(num).rstrip('0').rstrip('.'), ['', 'K', 'M', 'B', 'T'][magnitude])

@register.simple_tag(takes_context = True)
def get_insta_followers(context, url):
    arr = url.split('/')
    username = arr[-2]
    default_followers_count = "35.5M"

    request = context['request']
    saved_cookie  = request.session['insta-followers'] if request.session.has_key('insta-followers') else None
    if saved_cookie is None:
        from instaloader import Instaloader, Profile
        L = Instaloader()
        profile = Profile.from_username(L.context, username)
        saved_cookie = format_number_stack_overflow(profile.followers)
        request.session['insta-followers'] = saved_cookie
    
    current_followers = saved_cookie or default_followers_count
    return current_followers

@register.simple_tag(takes_context = True)
def get_twitter_followers(context, url):

    default_followers_count = "6.6M"
    return default_followers_count

@register.simple_tag(takes_context = True)
def get_fb_page_likes(context, url):
    default_likes_count = "55M"
    return default_likes_count

