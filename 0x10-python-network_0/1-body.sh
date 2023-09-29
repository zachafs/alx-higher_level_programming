#!/bin/bash
# a script that sends a GET request to the URL passed in, and displays the body of the response
curl -s "$1" -X GET -L 
