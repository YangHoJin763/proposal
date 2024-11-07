#!/bin/bash

weight=$1
height1=$2

if [ -z "$weight" ] || [ -z "$height1" ]; then
    exit 1
fi

height=$(echo "$height1 / 100" | bc -l)

bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5" | bc -l) && $(echo "$bmi < 23.0" | bc -l) )); then
    echo "정상체중입니다."
else
    echo "과체중입니다."
fi