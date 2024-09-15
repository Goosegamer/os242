#!/bin/bash

# Define input and output files
INPUT_FILE="/Users/gurumeyy/Downloads/inputSCRAP.txt"
OUTPUT_FILE="outputSCRAP.txt"

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "ERROR: $INPUT_FILE does not exist!"
    exit 1
fi

# Extract NPMs (student IDs), sort, and remove duplicates
# Assumes NPMs are sequences of exactly 10 digits
grep -oE '[0-9]{10}' "$INPUT_FILE" | sort -n | uniq > "$OUTPUT_FILE"

# Check if the output file was created successfully
if [ -f "$OUTPUT_FILE" ]; then
    echo "Extraction complete. The output file '$OUTPUT_FILE' has been created."
else
    echo "ERROR: Failed to create the output file '$OUTPUT_FILE'."
fi
