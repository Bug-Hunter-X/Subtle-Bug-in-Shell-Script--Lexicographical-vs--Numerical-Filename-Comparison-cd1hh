# Shell Script Bug: Lexicographical Filename Comparison

This repository demonstrates a subtle bug in a shell script that involves comparing filenames. The script intends to process files numerically (e.g., file1.txt, file2.txt, etc.), but it mistakenly uses lexicographical comparison, leading to incorrect results.

## Bug Description

The script iterates through files ending in '.txt' and checks if the filename is numerically less than 'file5.txt'.  However, the comparison `[[ $i -lt file5.txt ]]` performs a lexicographical (alphabetical) comparison, not a numerical one. This means 'file10.txt' would be considered 'less than' 'file5.txt' because '10' comes before '5' lexicographically.

## How to Reproduce

1. Create some text files in the same directory as the script, following a numerical naming pattern (e.g., file1.txt, file2.txt, file10.txt).
2. Run the script `bug.sh`.
3. Observe that the output doesn't accurately reflect the numerical order of the filenames.

## Solution

The solution involves extracting the numerical part of the filename and performing a numerical comparison. This is achieved in the `bugSolution.sh` script.
