from django.db.models.query import QuerySet
from . models import Player_Stats

def get_normal_avg(input, output):
    seasons = len(input) or 1
    for query in input:
        output.ppg = output.ppg + query.ppg
        output.win_ratio = output.win_ratio + query.win_ratio
        output.rating = output.rating + query.rating
    
    output.ppg = round((output.ppg / seasons), 2)
    output.win_ratio = round((output.win_ratio / seasons), 2)
    output.rating = round((output.rating / seasons), 2)

    return output

def get_avg_by_games_played(input, output):
    grand_total_points, grand_total_wins, grand_total_rating, grand_total_matches = 0, 0, 0, 0
    for query in input:
        grand_total_points = grand_total_points + (query.ppg * query.apps)
        grand_total_wins = grand_total_wins + (query.win_ratio * query.apps)
        grand_total_rating = grand_total_rating + (query.rating * query.apps)
        grand_total_matches = grand_total_matches + query.apps
    if grand_total_matches == 0:
        output.ppg, output.win_ratio, output.rating = 0, 0, 0
    else:
        output.ppg = round((grand_total_points / grand_total_matches), 2)
        output.win_ratio = round((grand_total_wins / grand_total_matches), 2)
        output.rating = round((grand_total_rating / grand_total_matches), 2)

    return output

def calculate_stats(input_queryset, return_object):
    return_object = get_avg_by_games_played(input_queryset, return_object)
    for query in input_queryset:
        return_object.season = query.season
        return_object.apps = return_object.apps + query.apps
        return_object.minutes = return_object.minutes + query.minutes
        return_object.goals = return_object.goals + query.goals
        return_object.assists = return_object.assists + query.assists
        return_object.yellows = return_object.yellows + query.yellows
        return_object.reds = return_object.reds + query.reds
        return_object.own_goals = return_object.own_goals + query.own_goals
        return_object.fouls = return_object.fouls + query.fouls
        return_object.offsides = return_object.offsides + query.offsides
        return_object.motm = return_object.motm + query.motm

    return return_object

def get_stats_sum(input_queryset, return_object):
    if isinstance(input_queryset, QuerySet) or isinstance(input_queryset, list):
        return_object = calculate_stats(input_queryset, return_object)
    else:
        return_object = input_queryset
    return return_object

def get_season_models(all_seasons_queryset, slug_name):
    season_models = []
    for each_season in all_seasons_queryset:
        stats_of_the_season_in_all_comps = Player_Stats.objects.filter(player__slug=slug_name, season__start_year=each_season.start_year)
        if not stats_of_the_season_in_all_comps:
            continue
        season_stat_after_calculation = get_stats_sum(stats_of_the_season_in_all_comps, Player_Stats())
        season_models.append(season_stat_after_calculation)
    return season_models

def get_player_news_models(all_news_queryset, slug_name):
    player_news_models = []
    for news in all_news_queryset:
        tag_set = news.news_tag_player_set.all()
        for tag in tag_set:
            if tag.player_tag.slug == slug_name:
                player_news_models.append(news)
    return player_news_models

def get_staff_news_models(all_news_queryset, slug_name):
    staff_news_models = []
    for news in all_news_queryset:
        tag_set = news.news_tag_staff_set.all()
        for tag in tag_set:
            if tag.staff_tag.slug == slug_name:
                staff_news_models.append(news)
    return staff_news_models