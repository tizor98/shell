#!/bin/bash
#Author: Alberto Ortiz

for file in $(ls *.sh)
do
  echo "-----------$file------------"
  while read -r line;
  do
    echo "$line"
  done < "$file"
done

