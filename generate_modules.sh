#!/bin/bash

# Reading modules to initialize
echo "Reading modules to initialize from modules.shrimp list..."

input="./modules.shrimp"
if [ -f "$input" ]; then
    echo "Found modules.shrimp file!"
    echo "Initializing submodules..."
    while read line; do
        if [[ $line != \#* ]]; then
            if [[ ! -z "$line" ]]; then
                echo "Found $line module! Initializing..."
                git submodule init ./modules/$line;
                git submodule update ./modules/$line;
            fi
        fi
    done < $input

    echo "Done initializing and updating selected modules!"
else
    echo "File modules.shrimp not existing or not accessible, make sure you cloned whole repository properly and file have read access!"
fi
