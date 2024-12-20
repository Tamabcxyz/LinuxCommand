#!/bin/bash

# Check if a folder path is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <folder-path>"
  exit 1
fi

# Get the folder path from the argument
FOLDER=$1

# Check if the folder exists
if [ ! -d "$FOLDER" ]; then
  echo "Error: '$FOLDER' is not a valid directory."
  exit 1
fi

echo -e"\n===========================Zip folder $FOLDER===========================\n"
# Loop through each subfolder
for subfolder in "$FOLDER"/*/; do
  # Skip if no subfolder exists
  [ -d "$subfolder" ] || continue

  # Get the name of the subfolder (without the full path)
  folder_name=$(basename "$subfolder")

  # Create a zip file named after the subfolder
  tar -czvf "${FOLDER}/${folder_name}.tar.gz" "$subfolder" 2> /dev/null 1> /dev/null

  echo "Zipped $subfolder into ${FOLDER}/${folder_name}.tar.gz"
done

echo -e"\n===========================Zip Done===========================\n"
