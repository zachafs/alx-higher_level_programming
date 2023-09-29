#!/bin/bash
# a script that sends a request to the URL passed in as an argumentof the 'Content-Length' header in the response
curl -sI "$1" | grep 'Content-Length' | awk '{print $2}'
