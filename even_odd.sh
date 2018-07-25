#!/bin/bash

for i in {1..10}
do
  echo $i
  let "a=$i % 2"
  if [[ $a -eq 0 ]]
  then
    echo $i is even!
  else
    echo $i is odd!
  fi
done
