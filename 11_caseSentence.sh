#!/bin/bash
#Author: Alberto Ortiz

fruit=""
option=""

echo "Sentencia case"
read -p "Introduce tu fruta favorita: " fruit
echo ""

case $fruit in
  "manzana") echo "Tu fruta favorita es grandiosa";;
  "papaya") echo "Está bien, pero deberías refinar tus gustos";;
  *) echo "Tu gusto es muy malo";;
esac

echo "---------------------------------"

read -p "Introduce una opción de la a-z: " option
echo""

case $option in
  "a") echo "Seleccionaste la opción a";;
  "b") echo "Seleccionaste la opción b";;
  [c-fC-F]) echo "Esta opción no está implementada";;
  *) echo "Opción incorrecta";;
esac

