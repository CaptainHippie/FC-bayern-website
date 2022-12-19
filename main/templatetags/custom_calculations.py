from django import template

register = template.Library()

@register.simple_tag
def avg_percent(team, opponent):
    if team is None or opponent is None:
        return 0
    if team==0 and opponent==0:
        return 50
    percent = round((team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def avg_percent_away(team, opponent):
    if team is None or opponent is None:
        return 0
    if team==0 and opponent==0:
        return 50
    percent = round(100-(team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def get_other_possession(possession):
    if possession is None:
        return 50
    return (100 - possession)

@register.simple_tag
def rnd_pos(possession):
    if possession is None:
        return 50
    pos = round(possession, 0)
    return pos

@register.simple_tag
def rnd_pos_opp(possession):
    if possession is None:
        return 50
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

@register.filter()
def partner_filter(partners, attr):
    return partners.filter(kind=attr)