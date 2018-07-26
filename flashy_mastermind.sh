#!/bin/bash
answer=""
COLORS=("R" "B" "G" "Y" "W" "P")
ANSWER_LENGTH=4

#generates solution that user is trying to guess


for ((i=0;i<ANSWER_LENGTH; i++)); do
  rand_num=$(( $RANDOM % 6 ))
  answer+=${COLORS[$rand_num]}
done

echo $answer

check_guess () {
  

  for ((i=0;i<ANSWER_LENGTH; i++)); do
    #printf "$i:\t"
    guess_val=${guess:${i-1}:1}
    answer_val=${answer:${i-1}:1}

    #printf "GUESS_VAL: $guess_val \t ANSWER_VAL: $answer_val \n"
    
    if [ "$guess_val" == "$answer_val" ]
    then
        #echo "MATCH" $guess_val
        ((NUM_CORRECT++))
        #echo "NOT A MATCH"
    fi
    

  done


}


guess_correct=0
while [ $guess_correct -lt 1 ]; do

  echo   "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
  echo   "|||||                     $ANSWER_LENGTH MARBLES                           |||||"
  echo   "|||||                                                         |||||"
  echo   "|||||     COLORS: red [R], blue [B], green [G]                |||||"
  echo   "|||||             yellow [Y], white [W], purple [P]           |||||"
  echo   "|||||                                                         |||||"
  echo   "|||||                    ANSWER:  $answer                        |||||"
  echo   "|||||                                                         |||||"
  echo   "|||||                 Enter a guess:                          |||||"
  echo   "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

  read guess
  
  echo

  NUM_CORRECT=0
  check_guess

  if [ "$guess" = "$answer" ]; then
    echo "MATCH"
    ((guess_correct++))
  elif [ "$NUM_CORRECT" -gt 1 ]; then
    
    echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    echo "|||||                                                         |||||"
    echo "|||||                $NUM_CORRECT marbles correct                        |||||"
    echo "|||||                                                         |||||"
    echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

  elif [ "$NUM_CORRECT" -eq 1 ]; then
 
    echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    echo "|||||                                                         |||||"
    echo "|||||                $NUM_CORRECT marble correct                         |||||"
    echo "|||||                                                         |||||"
    echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
  
  else
    
    echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    echo "|||||                                                         |||||"
    echo "|||||                 NO marble correct                       |||||"
    echo "|||||                                                         |||||"
    printf "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
  fi
done
