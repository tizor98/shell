#!/bin/bash
#Author: Alberto Ortiz

echo "Uso de if, else if, y else"

classGrade=0
age=0
dirPath=""

read -n1 -p "Indica tu nota (0-10): " classGrade

echo ""

if (( $classGrade >= 7 )); then
  echo "Bien! Aprobaste la materia"
else
  echo "Reprobaste :("
fi

echo -e "\n"

read -p "Indica tu edad: " age

echo ""

if [ $age -le 18 ]; then
  if (( $classGrade >= 7 )); then
    echo "Sí puedes entrar, pero sin consumir alcohol"
  else
    echo "No puedes entrar todavía"
  fi
elif [[ $age -ge 19 ]] && [[ $edad -le 35 ]]; then
  echo "Sí puedes entrar, pero con ciertas restricciones"
else
  echo "Sí puedes entrar"
fi

echo -e "\n"

read -p "Introduce el path del archivo: " dirPath

echo ""

if [ -d $dirPath ]; then
  echo "Directorio sí existe"
else
  echo "Directorio no existe"
fi

