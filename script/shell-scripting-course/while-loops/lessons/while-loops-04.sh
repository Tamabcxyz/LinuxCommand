#!/bin/bash
#read each line from while-loops-03.sh and print the line number
LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done < ./while-loops-03.sh
