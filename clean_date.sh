#!/bin/bash

date=$1

if [ $1 ]; then
  echo "Date recieved:" $date
fi

clean_date=$( echo $1 | sed 's/[ -/\^#]/:/g' )

echo Clean date: $clean_date
