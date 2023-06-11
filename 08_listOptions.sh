#!/bin/bash
#Author: Alberto Ortiz

echo "Programa opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"

while [ -n "$1" ]
do
case "$1" in 
-a) echo "-a opción utilizada";;
-b) echo "-b opción utilizada";;
*) echo "$1 no es una opción";;
esac
shift
done

