#!/bin/bash

#echo $1 $2 $3
#NAMES=("peter" "piper" "frank")

args=("$@")

#Number of arguments passed in
nLen=$#

# the -e argument allows for escape codes like \n
echo -e ${nLen} 'arguments entered\n'

echo 'They are: '

# the ${@} cycles through all of the arguments entered
for arg in "${@}"; do
  echo ${arg}
done

echo "ALL DONE"
