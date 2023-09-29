#!/bin/bash
# a script that sends a GET request to the URL passed in, and displays the body of the response
if [ -z "$1" ]
then
    echo "Error: URL parameter is missing."
    exit 1
fi

response=$(curl -s "$1" -X GET -L)
if [ $? -ne 0 ]
then
    echo "Error: Failed to retrieve the response from the URL."
    exit 1
fi

echo "$response"
