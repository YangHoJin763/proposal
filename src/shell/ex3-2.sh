#!/bin/bash

num1=$1
operator=$2
num2=$3

if [ "$operator" == "+" ]; then
    result=$((num1 + num2))
elif [ "$operator" == "-" ]; then
    result=$((num1 - num2))
else
    echo "지원되지 않는 연산자입니다. + 또는 -만 사용 가능합니다."
    exit 1
fi

echo "$result"
