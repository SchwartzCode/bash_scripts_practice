#!/bin/bash

DATE=$(date +%u)

echo $DATE

#should have put sunday last, thought it was 0-6 for %u
case $DATE in
  [7]*)
    echo Have a sleepy sunday!
    ;;
  [1]*)
    echo Have a mild monday :P
    ;;
  [2]*)
    echo Have a tilted Tuesday!
    ;;
  [3]*)
    echo Have a wild Wednesday!
    ;;
  [4]*)
    echo "Have a thankful Thursday (?)"
    ;;
  [5]*)
    echo TGIF!!
    ;;
  [6]*)
    echo Have a sweet Saturday!
    ;;
esac
