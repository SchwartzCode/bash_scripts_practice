#!/bin/bash

date="$(date +%Y-%m-%d)"

for i in $@
do
  file="$i"
  copy="$date""_""$file"

  cp ./$file ./$copy
done
