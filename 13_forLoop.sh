#!/bin/bash
#Author: Alberto Ortiz

numArray=(1 2 3 4 5)

echo "-----------------------------------"
echo "Iteración de lista de números"

for num in ${numArray[*]}
do
  echo "Elemento: $num"
done

echo "-----------------------------------"
echo "Iteración de lista de strings"

for str in "Alberto" "Carolina" "Juan Diego" "Tunjo"
do
  echo "Nombre: $str"
done

echo "-----------------------------------"
echo "Iteración de lista de archivos"

for file in *
do
  echo "Nombre de archivo: $file"
done

echo "-----------------------------------"
echo "Iteración con un comando"

for file in $(ls)
do
  echo "Nombre de archivo: $file"
done

echo "-----------------------------------"
echo "Iteración con formato tradicional"

for ((i=0; i<10; i++))
do
  echo "Número: $i"
done

