#!/bin/bash
#Author: Alberto Ortiz

echo "Sentencias break y continue"

for file in $(ls)
do
  for name in {1..4}
  do
    if [ $file = "09_descargar.sh" ]; then
      break;
    elif [[ $file == 04* ]]; then
      echo "Archivo saltado"
      continue;
    else
      echo "Nombre del archivo: $file _ $name"
    fi
  done
done

