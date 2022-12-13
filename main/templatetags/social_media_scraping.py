from instaloader import Instaloader, Profile
from django import template

register = template.Library()
L = Instaloader()

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

@register.simple_tag
def get_insta_followers(url):
    arr = url.split('/')
    username = arr[-2]
    return "35.3M"
    profile = Profile.from_username(L.context, username)
    followers_humanized = format_number_stack_overflow(profile.followers)
    return followers_humanized

