#!/bin/bash
# This script will run the mandelbrot program with different values of n
for (( i=0; i<=10000; i+=500 )); do
    output="output.txt"
    if [ ! -f "$output" ]; then            
        touch "$output"
    fi
    echo "Running iteration $i"
    ./sequential "$i" >> "$output" 2>&1
    sleep 1
done
