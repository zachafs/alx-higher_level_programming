#!/usr/bin/python3
def weight_average(my_list=[]):
    if len(my_list) == 0:
        return 0
    numerator = 0
    denominator = 0
    for a, b in my_list:
        product = a*b
        numerator += product
        denominator += b
    return numerator / denominator
