#!/bin/bash
# a script that sends a request to the URL passed in as an argument
curl -sI "$1" | grep 'Content-Length' | awk '{print $2}'
