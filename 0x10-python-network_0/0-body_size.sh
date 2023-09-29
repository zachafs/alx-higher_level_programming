#!/bin/bash
# a script that sends a request to the URL passed in as an argument
#Send a request to a specified URL and retrieve the value of the 'Content-Length' header in the response.

#Usage:
#   ./script.sh [URL]

#Args:
#   URL (str): The URL to send the request to.

#Returns:
#   str: The value of the 'Content-Length' header in the response.

#Example:
#    ./script.sh https://example.com

curl -sI "$1" | grep 'Content-Length' | awk '{print $2}'
