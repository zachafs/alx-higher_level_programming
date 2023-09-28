#!/bin/bash

# Check if the is only one argument(the URL)
if [ $# -ne 1 ]
then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Get the URL-form argument
url=$1

# Use curl to send a request URL,S response to body to a temporary file
curl -sI "$url" | grep -i 'Content-Length' | awk '{print $2}'

