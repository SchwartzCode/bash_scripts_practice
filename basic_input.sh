#!/bin/bash

echo "Enter your name: "
read name

echo "Enter your age: "
read age


if [ "$1" = "-a" ]
then
  echo "HELLO ${name}, YOU STUPID ${age} YEAR OLD!"
elif [ "$1" = "-h" ]
then
  echo "Hi ${name}! I hope ${age} is treating you well!"
else
  echo "ERROR: No argument given."
  echo "Arguments: -a for angry mode, -h for happy mode"
fi

