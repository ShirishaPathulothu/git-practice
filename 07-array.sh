#!/bin/bash

NAMES=("Baby" "Lucky" "Rani")

echo "First name is: ${NAMES[0]}"
echo "Second name is: ${NAMES[1]}"
echo "Third name is: ${NAMES[2]}"

# index starts from 0, 
# to print all names at one time is @

echo "Entered names are: ${NAMES[@]}"

