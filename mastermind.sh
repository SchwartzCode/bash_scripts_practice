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

  echo   "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
  echo   "|||||                     $ANSWER_LENGTH MARBLES                           |||||"
  echo   "|||||                                                         |||||"
  echo   "|||||     COLORS: red [R], blue [B], green [G]                |||||"
  echo   "|||||             yellow [Y], white [W], purple [P]           |||||"
  echo   "|||||                                                         |||||"
  echo   "|||||                    ANSWER:  $answer                        |||||"
  echo   "|||||=========================================================|||||"
  
  guess_correct=0
while [ $guess_correct -lt 1 ]; do

  printf "|||||        "
  read -r guess 
  echo -en "\e[1A"
  echo   "              ||        NUM CORRECT         |||||"
  echo   "|||||=========================================================|||||"

  NUM_CORRECT=0
  check_guess

  if [ "$guess" = "$answer" ]; then
  
    #echo -e '\r \r'
    echo   "|||||=========================================================|||||"
    echo   "|||||=========================================================|||||"
    echo   "|||||                       CONGRATULATIONS!                  |||||"
    echo   "|||||                     YOU GUESSED THE CODE!               |||||"
    echo   "|||||                                                         |||||"
    echo   "|||||                      ANSWER:   $answer                    |||||"
    echo   "|||||=========================================================|||||"
    echo   "|||||=========================================================|||||"

  ((guess_correct++)) 

  fi
done
