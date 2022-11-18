from django.contrib import admin
from . models import *

class Goalscorers_Admin(admin.TabularInline):
    model = Goalscorers

class Opponent_Goalscorers_Admin(admin.TabularInline):
    model = Opponent_Goalscorers

class Match_timeline_Admin(admin.TabularInline):
    model = Match_timeline

class Match_Admin(admin.ModelAdmin):
    inlines = (Goalscorers_Admin, Opponent_Goalscorers_Admin, Match_timeline_Admin)

class Player_Stats_Admin(admin.ModelAdmin):
    list_display = ('player', 'season', 'competition')

class Player_Images_Admin(admin.TabularInline):
    model = Player_Image

class Player_Admin(admin.ModelAdmin):
    inlines = [Player_Images_Admin]

class News_tag_Player_Admin(admin.TabularInline):
    model = News_Tag_Player
class News_tag_Staff_Admin(admin.TabularInline):
    model = News_Tag_Staff

class News_article_Admin(admin.ModelAdmin):
    inlines = [News_tag_Player_Admin, News_tag_Staff_Admin]

class Club_season_stats_Admin(admin.TabularInline):
    model = Club_season_stats
class Team_admin(admin.ModelAdmin):
    inlines = [Club_season_stats_Admin]


class Album_Image_Admin(admin.TabularInline):
    model = Album_Image
class Club_Album_Admin(admin.ModelAdmin):
    inlines = [Album_Image_Admin]


admin.site.register(article_type)
admin.site.register(News_article, News_article_Admin)
admin.site.register(Competition)
admin.site.register(Team, Team_admin)
admin.site.register(Player, Player_Admin)

admin.site.register(Match_event)
admin.site.register(Season)
admin.site.register(Nationality)
admin.site.register(Player_Stats, Player_Stats_Admin)
admin.site.register(Position)

admin.site.register(Match, Match_Admin)
admin.site.register(Sponsor)

admin.site.register(Staff)

admin.site.register(Club_Album, Club_Album_Admin)
admin.site.register(CustomUser)

admin.site.register(Address)


