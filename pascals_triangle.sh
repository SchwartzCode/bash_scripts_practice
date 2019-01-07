#!/bin/bash

print_val () {
	if [ $1 -gt 999999 ]; then
	  printf "$1 "
	elif [ $1 -gt 99999 ]; then
	  printf "$1  "
	elif [ $1 -gt 9999 ]; then
	  printf "$1   "
	elif [ $1 -gt 999 ]; then
	  printf "$1    "
	elif [ $1 -gt 99 ]; then
	  printf "$1     "
	elif [ $1 -gt 9 ]; then
	  printf "$1      "
	else
	  printf "$1       "
	fi
}


cols=$( tput cols )
rows=$( tput lines )

start=1
middle=$(( $cols / 2))
CURR_LINE=1

tput clear
while [ $CURR_LINE -lt $(( $cols / 8 )) ] && [ $CURR_LINE -lt $rows ]; do
  declare -a NEW_LINE	
  row_start=$(( $middle - $(($CURR_LINE * 4)) ))
  tput cup $CURR_LINE $row_start
  tput bold
  tput sgr0

  for ((i=0; i<CURR_LINE;i++)); do

    if [ $i -eq 0 ] ; then
      NEW_LINE[0]=1
      print_val "${NEW_LINE[$i]}"
    elif [ $i -eq $(( $CURR_LINE - 1 )) ]; then
      NEW_LINE[$i]=1
      printf "${NEW_LINE[$i]}"
    else
      i_m=$(( $i - 1 ))
      NEW_LINE[$i]=$((${CURR_OUTPUT[$i]}+${CURR_OUTPUT[$i_m]} ))
      print_val "${NEW_LINE[$i]}"
    fi
  done


      CURR_OUTPUT=("${NEW_LINE[@]}")
      ((CURR_LINE++))


echo
done
