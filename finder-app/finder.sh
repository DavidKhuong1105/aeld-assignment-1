#!/bin/bash

if [ $# -ne 2 ];
then 
    echo "Errors: Missing arguments."
    exit 1
fi

filedir=$1
searchstr=$2

if [ ! -d "$filedir" ];
then
    echo "Error: filedir is not a valid directory."
    exit 1
fi

X=$(find "$filedir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filedir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"