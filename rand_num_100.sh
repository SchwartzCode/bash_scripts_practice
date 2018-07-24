#!/bin/bash

printf "Enter lower limit of number range: "
read lower_lim

printf "Enter upper limit of number range: "
read upper_lim

printf "Enter number of numbers to be generated: "
read amt

diff=$(( $upper_lim - $lower_lim + 1))
echo "range:" $diff
echo "lower limit: " $lower_lim

for ((i=0;i<$amt; i++))
do
pizza=$(( $RANDOM % $diff + $lower_lim ))
echo $pizza

done
