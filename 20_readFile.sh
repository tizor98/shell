#!/bin/bash
#Author: Alberto Ortiz

echo "Leer en un archivo"

cat $1

echo -e "\nAlmacenar valores en una variable"
text=`cat $1`
echo "$text"

# Si se tienen espacios en blanco es necesario el IFS
echo -e "\nLeer archivo línea por línea"
while IFS= read linea
do
  echo "$linea"
done < $1

