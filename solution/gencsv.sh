#!/bin/bash

# Generate CSV file
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start=$1
end=$2

# Create inputFile as a file
echo "" > inputFile

for ((i=start; i<=end; i++)); do
    echo "$i, $RANDOM" >> inputFile
done

echo "CSV file 'inputFile' generated with $((end-start)) entries."

