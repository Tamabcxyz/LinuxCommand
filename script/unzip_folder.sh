#!/bin/bash

# Check if a directory path is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory-path>"
  exit 1
fi

# Get the directory path from the argument
DIR=$1

# Check if the provided path is a valid directory
if [ ! -d "$DIR" ]; then
  echo "Error: '$DIR' is not a valid directory."
  exit 1
fi

echo -e"\n===========================Unzip folder $DIR===========================\n"

# Find and extract all .tar.gz files in the directory
echo "Extracting all .tar.gz files in '$DIR'..."
for file in "$DIR"/*.tar.gz; do
  # Skip if no .tar.gz files are found
  [ -e "$file" ] || continue

  # Extract the tar.gz file
  echo "Unzipping: $file"
  tar -xzvf "$file" -C "$DIR"
done

echo -e"\n===========================Unzip Done===========================\n"
