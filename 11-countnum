#!/bin/bash

# Check if file is passed as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Count words and display frequency
cat $1 | tr -s '[:space:]' '\n' | sort | uniq -c | sort -nr

if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Read the file and transpose (reverse rows and columns)
awk '
{
    for (i=1; i<=NF; i++) {
        matrix[NR,i] = $i
    }
}
END {
    for (i=1; i<=NF; i++) {
        for (j=1; j<=NR; j++) {
            printf "%s ", matrix[j,i]
        }
        print ""
    }
}
' $1 
