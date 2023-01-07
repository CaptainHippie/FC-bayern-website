def round_decimals_to_two(num):
    rounded = str(round(float(num), 2))
    if "." in rounded:
        dec = rounded.split(".")[1]
        if dec == "0":
            rounded = rounded.split(".")[0]
        elif len(dec) == 1:
            rounded = rounded + "0"
    return rounded

#print(round_decimals_to_two(352.993))
