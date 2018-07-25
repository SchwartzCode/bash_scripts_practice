#!/bin/bash

if [[ ! $1 ]] || [[ $2 ]]
then
  echo "ERROR: Invalid Argument"
  echo "Usage: ./file_info.sh [file]"
  exit 1
fi


if [ -s $1 ]
then
  file_size=$(wc -c <"$1")
  printf "File Size [bytes]: $file_size\n"
else
  printf "File Size:\t EMPTY\n"
fi

if [ -r $1 ]
then
  printf "Readable:\t YES\n"
else
  printf "Readable:\t NO\n"
fi

if [ -w $1 ]
then
  printf "Writeable:\t YES\n"
else
  printf "Writeable:\t NO\n"
fi

if [ -x $1 ]
then
  printf "Executable:\t YES\n"
else
  printf "Executable\t NO\n"
fi

