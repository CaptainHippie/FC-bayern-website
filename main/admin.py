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

admin.site.register(article_type)
admin.site.register(News_article)
admin.site.register(Competition)
admin.site.register(Team)
admin.site.register(Player)
admin.site.register(Match_event)

admin.site.register(Match, Match_Admin)

