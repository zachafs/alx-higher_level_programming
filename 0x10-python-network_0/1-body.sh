#!/bin/bash
# a script that validates the input URL and sends a GET request to the validated URL, displaying the body of the response
if [[ $1 =~ ^https?:// ]]; then
    curl -s "$1" -X GET -L 
else
    echo "Invalid URL"
fi
