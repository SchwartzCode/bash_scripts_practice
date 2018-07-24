#!/bin/bash

numbers='^[0-9]+$'

if ! [[ $1 =~ $numbers ]] || ! [[ $2 =~ $numbers ]]
then
  echo "ERROR: Invalid arguments"
  echo "Usage: ./multiply.sh [int] [int]"
  exit 1
fi

:<<'END'
if ! [[ $2 =~ $numbers ]]
then
  echo "ERROR: Invalid arguments"
  echo "Usage: ./multiply.sh [int] [int]"
  exit 1
fi
END

a=$(( $1 * $2 ))
echo $1 "*" $2 "=" $a
