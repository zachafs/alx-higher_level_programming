#!/bin/bash

# Check if the script is provided with exactly one argument (the URL)
if [ $# -ne 1 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Get the URL from the command-line argument
url="$1"

# Use curl to send a request to the URL and save the response body to a temporary file
curl -s "$url" > response.tmp

# Calculate the size of the response body in bytes
size_in_bytes=$(stat -c %s response.tmp)

# Display the size in bytes
echo "$size_in_bytes"

# Remove the temporary file
rm response.tmp
