#!/bin/bash

printf "Enter timestamps: "

read time1 time2

if [ $time1 -gt $time2 ]; then
  diff=$(( $time1 - $time2 ))
else
  diff=$(( $time2 - $time1 ))
fi

echo Difference: $diff


