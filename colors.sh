#!/bin/bash
NoColor='\033[0m'
BLACK='\033[0;30m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'

#this doesn't work (at least not the way i tried)
#G_TEST='${GREEN}green${NoColor}'
#echo "test: " $G_TEST

printf "Here is ${BLACK}black${NoColor}\n"
printf "Here is ${BLUE}blue${NoColor}\n"
printf "Here is ${GREEN}green${NoColor}\n"
