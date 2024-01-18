#!/bin/bash

input_file=$1
output_file="filtered_emails.txt"

# Use grep to extract lines containing email addresses
grep -E -o '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' "$input_file" > "$output_file"

echo "Filtered emails saved to $output_file"\n

sed 's/$/, /' "$output_file" > formatted_emails.txt

echo "Comma-separated emails saved to formatted_emails.txt"