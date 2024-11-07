#!/bin/bash

count=$1

if [ -n "$count" ]; then
    for ((i=0;i<count;i++))
    do
        echo "hello world"
    done
else
    while true
    do
        echo "hello world"
    done
fi
 