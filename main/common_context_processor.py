from .models import *

club_data = {
		'full_name' : 'FC Bayern München',
		'logo' : 'logos/bayern_logo.png',
		'color' : 'rgb(220, 5, 45)',
		'alt_color' : '#000e29',
		'manager' : 'Julian Nagelsmann',
		'fb_link' : 'https://www.facebook.com/fcbayern.en',
		'insta_link' : 'https://www.instagram.com/fcbayern/',
		'twitter_link' : 'https://twitter.com/FCBayern'
}

def bayern_data(request):
	banner_news = News_article.objects.filter(featured=True).order_by('-added')[0:4]
	logged_user_id = request.user.id if request.user.is_authenticated else None

	logged_user = CustomUser.objects.filter(id=logged_user_id).first() if logged_user_id else None

	context = {
			'bayern' : club_data,
			'logged_user' : logged_user,
            'banner_news' : banner_news
    }
	return context
