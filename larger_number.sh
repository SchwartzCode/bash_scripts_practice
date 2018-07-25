#!/bin/bash


numbers='^[0-9]+$'

if ! [[ $1 =~ $numbers ]] || ! [[ $2 =~ $numbers ]]
then
  echo "ERROR: Invalid arguments"
  echo "Usage: ./multiply.sh [int] [int]"
  exit 1
fi

if [[ $1 -gt $2 ]]
  then
  echo $1 "is greater than" $2
elif [[ $2 -gt $1 ]]
then
  echo $2 "is greater than" $1
fi
