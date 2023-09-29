#!/bin/bash
# a script that sends a request to the URL passed in as an argument
#Send a request to a specified URL and retrieve the value of the 'Content-Length' header in the request
curl -sI "$1" | grep 'Content-Length' | awk '{print $2}'
