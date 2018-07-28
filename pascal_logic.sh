#!/bin/bash
CURR_LINE=1
OUTPUT_LENGTH=5

curr_output[0]=1
curr_output[1]=2
curr_output[2]=3
curr_output[3]=4
curr_output[4]=5

for ((i=0; i<OUTPUT_LENGTH;i++)); do

  if [ $i -eq 0 ] ; then
    echo woop 1
  elif [ $i -eq $(( $OUTPUT_LENGTH - 1 )) ]; then
    echo weep 1
  else
    i_m=$(( $i - 1 ))
    echo $(( ${curr_output[$i]} + ${curr_output[$i_m]} ))
  fi

done
