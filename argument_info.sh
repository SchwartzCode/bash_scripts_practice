#!/bin/bash
prefix="./"

echo
echo "The name of this script is:   ${0#$prefix}"
echo "This script was run by:       $USER"
echo "The hostname of this machine: $HOSTNAME"
echo "Number of arguments entered:  $#"
echo "Arguments entered: "

args=$@

for i in "$@"
do
  echo "$i"
done

#echo" All the args: $@"
