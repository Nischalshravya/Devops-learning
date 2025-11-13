#!/bin/bash



echo "Below are the numbers divisible by 3 or 5 and not divisible by 15"

for i in {1..100}; do
    if (( (i % 3 == 0 || i % 5 == 0) && i % 15 != 0 )); then
        echo $i
    fi
done

