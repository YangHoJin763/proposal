#!/bin/bash

DB_FILE="DB.txt"


name=$1
info=$2


if [ ! -f "$DB_FILE" ]; then
    touch "$DB_FILE"
fi


if [ -n "$name" ] && [ -n "$info" ]; then
    echo "$name $info" >> "$DB_FILE"
fi


cat "$DB_FILE"
