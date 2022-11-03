from django.shortcuts import render, redirect
from . models import *

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
