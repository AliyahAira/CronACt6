#!/bin/bash

# Check if log.txt exists, if not create it
if [ ! -f log.txt ]; then
    touch log.txt
fi

# Get GitHub username using the GitHub context environment variable
GITHUB_USER="${GITHUB_ACTOR}"

# Log the current date, time, and GitHub username to log.txt
echo "$(date) - Logged by: $GITHUB_USER" >> log.txt
