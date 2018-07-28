#!/bin/bash

cols=$( tput cols )
rows=$( tput lines )

#echo cols: $cols    rows: $rows

message=$@
input_length=${#message}

half_input_length=$(( $input_length / 2 ))

middle_row=$(( ($rows / 2) - 1 ))
mid_col_start=$(( ($cols / 2 ) - $half_input_length ))

echo $middle_row $mid_col_start
tput clear

tput cup $middle_row $mid_col_start
#tput bold
echo $@
tput sgr0
tput cup $( tput lines) 0
