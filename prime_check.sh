#!/bin/bash
echo "Enter a number to find its prime factorization: "
read args

sqrt_args=$(echo "sqrt ( $args )" | bc -l)
int_sqrt_args=$(echo $sqrt_args | awk '{print int($1)}')
root=$(( $int_sqrt_args + 1 ))

echo $root

 

printf "Prime factors of ${args} are: "

while [ $args -gt 1 ]
do
  for i in $(seq 2 ${args})
  do
    if [ $(($args % $i)) == 0 ]
    then
      printf $i
      args=$(( $args / $i ))
      break
    elif [ "$i" -ge "$int_sqrt_args" ]
    then
      printf $args
      args=1
      break
    fi
  done

  if [ "$args" -le 1 ]
  then
    printf "\n"
  else
    printf ", "
  fi
done

