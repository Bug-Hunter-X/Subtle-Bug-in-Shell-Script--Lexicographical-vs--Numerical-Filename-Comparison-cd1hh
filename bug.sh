#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.
# It uses a loop that relies on implicit integer comparison of filenames.

# Let's assume we have files named like this: file1.txt, file10.txt, file2.txt

for i in *.txt; do
  echo "Processing: $i"
  if [[ $i -lt file5.txt ]]; then  # Bug: This condition compares lexicographically, not numerically
    echo "$i is less than file5.txt"
  fi
  # ... further processing ...
  sleep 1 # Introduce a delay for demonstration
done