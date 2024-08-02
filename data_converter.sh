#!/bin/bash

# Function to process a single file
process_file() {
  local file=$1
  local filepath="./original/$file"
  local base_name="${file%.*}"

  # Convert file to UTF-8
  # Convert line feed code to LF
  nkf -w -Lu "$filepath" > "./csv/$base_name.csv"

  # Check if the file is TSV (based on the presence of tabs in the first line)
  if head -n 1 "./csv/$base_name.csv" | grep -q $'\t'; then
    # Convert TSV to CSV
    awk 'BEGIN {FS="\t"; OFS=","} { $1=$1; print }' "./csv/$base_name.csv" > "./csv/$base_name.csv.tmp"
    mv "./csv/$base_name.csv.tmp" "./csv/$base_name.csv"
  fi

  # Convert from csv to json
  csv2json -d "./csv/$base_name.csv" "./json/tmp_$base_name.json"
  cat "./json/tmp_$base_name.json" | jq . > "./json/$base_name.json"
  rm -rf ./json/tmp_*.json
}

# Check if a specific file is provided as an argument
if [ "$#" -eq 1 ]; then
  # Process the specified file
  process_file "$1"
else
  # Process all files in the ./original directory
  for file in `find ./original -name "*.csv" -type f -exec basename {} \;`; do
    process_file "$file"
  done
fi
