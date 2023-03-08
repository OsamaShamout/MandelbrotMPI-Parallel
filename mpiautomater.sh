#!/bin/bash
# This script will run the mandelbrot program with different values of n
for ((j=2; j<=10; j++)); do
    for (( i=0; i<=10000; i+=500 )); do
        output="output.txt"
        if [ ! -f "$output" ]; then
            touch "$output"
        fi
        echo "Running iteration $i"
        mpirun -np "$j" ./mandelbrot -n "$i" -a 3.5 >> "$output" 2>&1
        sleep 1
    done
done
