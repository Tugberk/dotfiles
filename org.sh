#!/bin/bash

#add it to the dotfiles

for ((i=1; i<=$1; i++))
do
  mkdir "week$i"
  cd "week$i"
  mkdir "lecture_notes"
  mkdir "questions"
  cd ..
done
