#!/bin/bash
# A script that sends a DELETE request to the URL passed and displays the body of the response Send the DELETE request and capture the response in a variable
response=$(curl -sX DELETE "$1")
echo "$response"

