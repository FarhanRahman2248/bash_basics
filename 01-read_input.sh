#!/bin/bash
# read the name of the user and print hello

echo "Hello! What is your name"
read name
echo "Welcome, $name"

# single quotes prevent the expansion of the variable
echo 'Your name was stored in $name'

# exercise: write a script that asks the user for a 
echo "Please enter a filename:"
read filename
if [ -e "$filename" ]; then
    echo "File '$filename' already exists!"
else
    touch "$filename"
    echo "Created an empty file named '$filename'"
fi
