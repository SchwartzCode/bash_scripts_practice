#!/bin/bash
numbers='^[0-9]+$'


if ! [[ $1 =~ $numbers ]] || ! [[ $2 =~ $numbers ]]; then
  echo "ERROR: Invalid argument"
  echo "Usage: ./time_diff.sh [int time1] [int time2] ... times in seconds"
  exit 1
fi

 
time1=$1
time2=$2

if [ $time1 -gt $time2 ]; then
  diff=$(( $time1 - $time2 ))
else
  diff=$(( $time2 - $time1 ))
fi

hours=0
minutes=0
seconds=0
diff_storage=$diff


while [ $diff_storage -gt 0 ]; do
  while [ $diff_storage -gt 59 ]; do
    while [ $diff_storage -gt 3599 ]; do
    
      if [ "$diff_storage" -gt 0 ]; then
        diff_storage=$(( $diff_storage - 3600 ))
        ((hours++))
      fi
    done
    
    if [ "$diff_storage" -gt 0 ]; then
      diff_storage=$(( $diff_storage - 60 ))
      ((minutes++))
    fi
  done

  if [ "$diff_storage" -gt 0 ]; then
    diff_storage=$(( $diff_storage - 1 ))
    ((seconds++))
  fi
done


#echo Difference in seconds: $diff
echo Difference: $hours hours, $minutes minutes, $seconds seconds

