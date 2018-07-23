#!/bin/bash

date="$(date +%Y-%m-%d)"
echo "$1"
echo "$date"

file="$1"
copy="$date""_""$file"

cp ./$file ./$copy

