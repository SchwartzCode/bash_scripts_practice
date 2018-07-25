#!/bin/bash

if ! [[ $1 ]] || [[ $2 ]]
then
  echo "ERROR: Invalid argument"
  echo "Usage: ./dir_info.sh [directory]"
  exit 1
fi


cd $1
dir_contents=$(ls)

#$item_count=$(ls -l | wc -l)
#echo $item_count


for i in $dir_contents; do
  if [ -d $i ]
  then
    cd ./$i
    num_contents=$(ls -l | wc -l)
    printf "$i \t[Directory]\n"
    printf "\tNumber of contents:$num_contents"
    cd ../
  else
    printf "$i \t[file]\n"
    ~/bash_scripts/file_info.sh $i
  fi


  printf "\n\n"
done

