#!/bin/bash
# a script that sends a request to the URL passed in as an argument displays the size of the body of the response
curl -sI "$1" | grep 'Content-Length' | awk '{print $2}'
