#!/bin/bash

# Corrected script using parameter expansion to extract numerical part of filename

for i in *.txt; do
  echo "Processing: $i"
  filename_number=${i%.txt}  # Remove the '.txt' extension
  filename_number=${filename_number#file} # Remove the 'file' prefix
  
  if (( filename_number < 5 )); then # Numerical comparison
    echo "$i is less than file5.txt"
  fi
  # ... further processing ...
  sleep 1
done