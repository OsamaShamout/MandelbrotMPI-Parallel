#!/bin/bash
# This script will run the mandelbrot program with different values of n
for ((j=2; j<=8; j++)); do
        output="output2.txt"
        if [ ! -f "$output2" ]; then
            touch "$output2"
        fi
        echo "Running iteration processor "$j""
        mpirun -np "$j" ./mandelbrot -n 255 -a 3.5 >> "$output2" 2>&1
        sleep 1
done
