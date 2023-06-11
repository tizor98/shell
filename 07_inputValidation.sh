#!/bin/bash
#Author: Alberto Ortiz

dniNumber='^[0-9]{10}$'
originCountry='^COL|BRA|USA$'
bithdayDate='^(19[0-9]{2}|20[0-2][0-9])-[01][0-9]-[0-3][0-9]$'

echo "Ingresa tu información básica: "
read -n10 -p "Ingresa tu id: " identificacion
echo ""
read -p "Ingresa tu país de residencia [COL, BRA, USA]: " pais
read -n10 -p "Ingresa tu fecha de nacimiento: " nacimiento
echo ""

if [[ $identificacion =~ $dniNumber ]]; then
  echo "Tu id $identificacion es valido"
else
  echo "Id $identificacion no valida"
fi

if [[ $pais =~ $originCountry ]]; then
  echo "País $pais es valido"
else
  echo "País $pais no valido, por favor ingresa un país con cobertura"
fi

if [[ $nacimiento =~ $bithdayDate ]]; then
  echo "Fecha $nacimiento es valida"
else
  echo "Fecha $nacimiento no es valida"
fi

