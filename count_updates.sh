#!/bin/bash

# Initialize the count if it's not present
if [ ! -f update_count.txt ]; then
    echo "0" > update_count.txt
fi

# Get the current count from the file
count=$(cat update_count.txt)

# Increment the count
count=$((count + 1))

# Save the new count back to the file
echo $count > update_count.txt

# Log the update count to the console
echo "Log has been updated $count times."
