#!/bin/bash

# Check if the URL is provided
if [ -z "$1" ]
then
    echo "Please provide a URL"
    exit 1
fi

# Send a request to the URL and store the response in a temporary file
response=$(curl -s -w %{size_download} "$1")

# Check if the response is empty
if [ -z "$response" ]
then
    echo "Failed to get the response"
    exit 1
fi

# Display the size of the body of the response in bytes
echo "$response"
