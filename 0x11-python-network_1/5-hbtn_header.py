#!/usr/bin/python3
"""a python script that sends a request to the URL passed in and displays
the value of the variable 'X-Request-Id' in the response header
"""

import sys
import requests

if __name__ == "__main__":
    url = sys.argv[1]

    m = requests.get(url)
    print(m.headers.get("X-Request-Id"))
