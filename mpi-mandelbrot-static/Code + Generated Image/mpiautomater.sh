#!/bin/bash
# This script will run the mandelbrot program with different values of n
for ((j=2; j<=8; j++)); do
        output="output.txt"
        if [ ! -f "$output" ]; then
            touch "$output"
        fi
        mpirun -n "$j" mb-block >> "$output" 2>&1
        sleep 1
done
