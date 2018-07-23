#!/bin/bash

rand_word_dir="/usr/share/dict/"

num=$1

numbers='^[0-9]+$'

if ! [[ $1 =~ $numbers ]]
then
  echo "ERROR: Invalid argument"
  echo "Usage: ./random_word.sh [int]"
  exit 1
fi



cd ${rand_word_dir}
printf "\nRandom words file directory:\t"
echo $( pwd )
printf "\n"

printf "PRINTING $num RANDOM WORDS: \n"
gshuf -n $num words


