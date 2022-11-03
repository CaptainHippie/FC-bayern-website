from django import template

register = template.Library()

@register.simple_tag
def call_offsides(team, opponent):
    if team is None or opponent is None:
        return 0
    percent = round((team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def call_fouls(team, opponent):
    if team is None or opponent is None:
        return 0
    percent = round((team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def call_shots(team, opponent):
    if team is None or opponent is None:
        return 0
    percent = round((team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def get_other_possession(possession):
    if possession is None:
        return 0
    return (100 - possession)

'''@register.simple_tag
def progress_bar(total_quantity, availability):
    progress_precent = availability
    progress_precent = availability/total_quantity * 100
    return math.floor(progress_precent)'''
