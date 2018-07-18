for i in {1..100}
do

  remainder5=$(( $i % 5 ))
  remainder3=$(( $i % 3 ))

#how to do a block comment:
  : <<'END'
  if (("$remainder5" == 0))
  then
    printf "DIVISIBILITY"
  fi
  printf "$remainder5" " "
END

  if (( "$remainder3" == 0 && "$remainder5" == 0 ))
  then
    printf "FizzBuzz"
  elif (( "$remainder5" == "0" ))
  then
    printf "Buzz"
  elif (( "$remainder3" == "0" ))
  then
    printf "Fizz"
  else
    printf "$i"
  fi 

  printf "\t"

# if statement to make new lines occasionally
  if (( $i % 5 == 0 ))
  then
    printf "\n"
  fi

done

printf "\n"
