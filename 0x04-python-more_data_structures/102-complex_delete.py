#!/usr/bin/python3
def complex_delete(a_dictionary, value):
    if not value:
        return a_dictionary
    for i in list(a_dictionary):
        if a_dictionary[i] == value:
            del a_dictionary[i]
    return a_dictionary
