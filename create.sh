#!/bin/bash

mkdir -p exam
cp ~/templates/logo.png exam
touch exam/midterm.md
touch exam/final.md

for ((i=1; i<=$1; i++))
do
  mkdir -p "week_$i"
  cp ~/templates/logo.png "week_$i"
  touch "week_$i"/"week_$i".md
  touch "week_$i"/"week_$i_questions".md
 done
  
