#!/bin/bash
answer=""
COLORS=("R" "B" "G" "Y" "W" "P")
ANSWER_LENGTH=4
GUESS_COUNT=0

#generates solution that user is trying to guess


for ((i=0;i<ANSWER_LENGTH; i++)); do
  rand_num=$(( $RANDOM % 6 ))
  answer+=${COLORS[$rand_num]}
done


check_guess () {
    NUM_CORRECT=0

  for ((i=0;i<ANSWER_LENGTH; i++)); do
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


    ((GUESS_COUNT++))
}



  output="\n\n\n|||||=========================================================|||||\n"
  output+="|||||=========================================================|||||\n"
  output+="|||||                                                         |||||\n"
  output+="|||||                     $ANSWER_LENGTH MARBLES                           |||||\n"
  output+="|||||                                                         |||||\n"
  output+="|||||                                                         |||||\n"
  output+="|||||     COLORS: red [R], blue [B], green [G]                |||||\n"
  output+="|||||             yellow [Y], white [W], purple [P]           |||||\n"
  output+="|||||                                                         |||||\n"
  output+="|||||                                                         |||||\n"
  #output+="|||||                    ANSWER:  $answer                        |||||\n"
  output+="|||||=========================================================|||||\n"
  output+="|||||            GUESS            ||      NUMBER_CORRECT      |||||\n"
  output+="|||||=========================================================|||||\n"

  guess_correct=0

  while [ $guess_correct -lt 1 ]; do
  printf "$output"
  


  printf "\n\n\t\t Enter a guess:  "
  read -r guess 
  check_guess

  output+="|||||            $guess             ||            $NUM_CORRECT             |||||\n"

  if [ "$guess" = "$answer" ]; then 
  
    #echo -e '\r \r'
    printf "$output"
    echo   "|||||=========================================================|||||"
    echo   "|||||=========================================================|||||"
    echo   "|||||                                                         |||||"
    echo   "|||||                       CONGRATULATIONS!                  |||||"

    if [ $GUESS_COUNT -lt 10 ]; then
    echo   "|||||                 YOU GUESSED THE CODE IN $GUESS_COUNT GUESSES!      |||||"
    elif [ $GUESS_COUNT -lt 100 ]; then
    echo   "|||||                YOU GUESSED THE CODE IN $GUESS_COUNT GUESSES!      |||||"
    else
      echo "|||||               YOU GUESSED THE CODE IN $GUESS_COUNT GUESSES!      |||||"
    fi

    echo   "|||||                                                         |||||"
    echo   "|||||                      ANSWER:   $answer                     |||||"
    echo   "|||||                                                         |||||"
    echo   "|||||=========================================================|||||"
    echo   "|||||=========================================================|||||"

  ((guess_correct++)) 

  fi
done
