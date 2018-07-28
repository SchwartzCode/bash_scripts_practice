#!/bin/bash

cols=$( tput cols )
rows=$( tput lines )

start=1
middle=$(( $cols / 2))
CURR_LINE=1

tput clear
while [ $CURR_LINE -lt $(( $cols / 2 )) ] && [ $CURR_LINE -lt $rows ]; do

  row_start=$(( $middle - $CURR_LINE ))
  tput cup $CURR_LINE $row_start
  tput bold
  tput sgr0


#had trouble figuring out how to store values (arrays gave me trouble),
# will revisit this at some point in the future

  for ((i=0; i<CURR_LINE;i++)); do

    if [ $i -eq 0 ] ; then
      NEW_LINE[0]=1
      printf "1 "

    elif [ $i -eq $(( $CURR_LINE - 1 )) ]; then
      NEW_LINE[$i]=1
      printf "1"
    else
      printf "B "
    fi

  done


  CURR_OUTPUT=$NEW_LINE
  ((CURR_LINE++))


echo
done