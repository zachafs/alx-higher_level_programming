#!/bin/bash
# a script that sends a DELETE request to the URL passed  and displays the body of the response
response=$(curl -sX DELETE "$1")
if [ $? -eq 0 ]
then
    echo "I'm a DELETE request"
    echo "$response"
else
    echo "Error: Failed to execute curl command"
fi
