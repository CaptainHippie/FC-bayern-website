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

club_socials_list = (("Facebook", "https://www.facebook.com/FCBayernEN", "fb_icon.png"),
				("Instagram", "https://www.instagram.com/fcbayern", "insta_icon.png"),
				("YouTube", "https://www.youtube.com/fcbayern", "YT_icon.png"),
				("Snapchat", "https://www.snapchat.com/add/fcbayernsnaps", "snap_icon.png"),
				("Twitter", "https://twitter.com/fcbayernen", "twitter_icon.png"),
				("OneFootball", "https://onefootball.com/en/team/fc-bayern-muenchen-6", "onefootball.png"),
				("TikTok", "https://www.tiktok.com/@fcbayern", "tiktok-512.png"))


def bayern_data(request):
	banner_news = News_article.objects.filter(featured=True).order_by('-added')[0:4]
	logged_user_id = request.user.id if request.user.is_authenticated else None

	logged_user = CustomUser.objects.filter(id=logged_user_id).first() if logged_user_id else None
	partners_footer = Sponsor.objects.filter(kind__in=('main','platinum'))

	context = {
			'bayern' : club_data,
			'logged_user' : logged_user,
            'banner_news' : banner_news,
			'partners_footer' : partners_footer,
			'club_socials' : club_socials_list
    }
	return context
