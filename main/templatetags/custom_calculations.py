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
def call_bookings(team, opponent):
    if team is None or opponent is None:
        return 0
    if team==0 and opponent==0:
        return 50
    percent = round((team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def call_bookings_away(team, opponent):
    if team is None or opponent is None:
        return 0
    if team==0 and opponent==0:
        return 50
    percent = round(100-(team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def get_other_possession(possession):
    if possession is None:
        return 0
    return (100 - possession)

@register.simple_tag
def rnd_pos(possession):
    if possession is None:
        return 0
    pos = round(possession, 0)
    return pos

@register.simple_tag
def rnd_pos_opp(possession):
    if possession is None:
        return 0
    pos_opp = round(100-possession, 0)
    return pos_opp


@register.simple_tag
def player_rating_percent(rating):
    if rating is None:
        return 0
    return (rating * 10)

@register.simple_tag
def discounted_price(price, discount):
    if discount is None or discount is 0:
        return price
    sellprice = price
    sellprice = price - (price * discount/100)
    return round(sellprice, 2)
