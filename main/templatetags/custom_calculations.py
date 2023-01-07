from django import template

register = template.Library()

def round_decimals_to_two(num):
    rounded = str(round(float(num), 2))
    if "." in rounded:
        dec = rounded.split(".")[1]
        if dec == "0":
            rounded = rounded.split(".")[0]
        elif len(dec) == 1:
            rounded = rounded + "0"
    return rounded

@register.simple_tag
def avg_percent(team, opponent):
    if team == None or opponent == None:
        return 0
    if team == 0 and opponent == 0:
        return 50
    percent = round((team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def avg_percent_away(team, opponent):
    if team == None or opponent == None:
        return 0
    if team == 0 and opponent == 0:
        return 50
    percent = round(100-(team * 100 / (team + opponent)), 1)
    return percent

@register.simple_tag
def get_other_possession(possession):
    if possession == None:
        return 50
    return (100 - possession)

@register.simple_tag
def rnd_pos(possession):
    if possession == None:
        return 50
    pos = round(possession, 0)
    return pos

@register.simple_tag
def rnd_pos_opp(possession):
    if possession == None:
        return 50
    pos_opp = round(100-possession, 0)
    return pos_opp


@register.simple_tag
def player_rating_percent(rating):
    if rating == None:
        return 0
    return (rating * 10)

@register.simple_tag
def discounted_price(price, discount):
    if discount == None or discount == 0:
        return price
    sellprice = price
    sellprice = price - (price * discount/100)
    return round_decimals_to_two(sellprice)

@register.filter()
def partner_filter(partners, attr):
    return partners.filter(kind=attr)

@register.simple_tag
def calc_rnd_price(price, qty):
    total = float(price) * qty
    return round_decimals_to_two(total)