#!/bin/bash
CURR_LINE=1
LINE_COUNT=5

while [ $CURR_LINE -le $LINE_COUNT ]; do
	declare -a NEW_LINE
	echo CURR_LINE: $CURR_LINE

	for ((i=0; i<CURR_LINE;i++)); do

  	  if [ $i -eq 0 ] ; then
    	    NEW_LINE[0]=1
	    echo ${NEW_LINE[0]}
  	  elif [ $i -eq $(( $CURR_LINE - 1 )) ]; then
	    NEW_LINE[$i]=1
	    echo ${NEW_LINE[$i]}
  	  else
    	    i_m=$(( $i - 1 ))
	    echo i_m: $i_m     C_O1: ${CURR_OUTPUT[$i]}   C_O2: ${CURR_OUTPUT[$i_m]}
	    NEW_LINE[$i]=$(( ${CURR_OUTPUT[$i]}+${CURR_OUTPUT[$i_m]} ))
    	    echo ${NEW_LINE[$i]}
  	  fi
	done

	CURR_OUTPUT=("${NEW_LINE[@]}")
	echo
  ((CURR_LINE++))
done
