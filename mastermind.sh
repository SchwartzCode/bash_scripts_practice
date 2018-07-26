#!/bin/bash
answer=""
COLORS=("R" "B" "G" "Y" "W" "P")

#generates solution that user is trying to guess
for i in {0..3}; do
  rand_num=$(( $RANDOM % 6 ))
  answer+=${COLORS[$rand_num]}
done
echo $answer


  :<<'END'
guess_correct=0
while [ $guess_correct -lt 1 ]; do
  echo "4 marbles"
  echo  "colors: red [R], blue [B], green [G], yellow [Y], white [W], purple [P]"
  printf "Enter a guess: "
  read guess
  echo "Guess:" $guess
  if [ "$guess" = "$answer" ]; then
    echo "MATCH"
    ((guess_correct++))
  else
    echo "Guess incorrect."
  fi
done
END
