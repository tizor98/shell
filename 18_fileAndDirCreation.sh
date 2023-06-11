#!/bin/bash
#Author: Alberto Ortiz

echo "----------------------------------------"
echo "Administración de archivos y directorios"
echo "----------------------------------------"

if [ $# -ne 2 ]; then
  echo "--- Error: Debes ingresar tipo de acción y nombre de destino"
  exit 1
fi

if [ $1 = "d" ]; then
  mkdir -m 744 $2
  echo "--- Directorio $2 creado correctamente"
  ls -la $2
elif [ $1 = "f" ]; then
  touch $2
  echo "--- Archivo $2 creado correctamente"
  ls -la $2
elif [ $1 = "rd" ]; then
  if [ -d $2 ]; then
    rm -rf $2
    echo "--- Directorio $2 eliminado correctamente"
  else
    echo "--- Directorio no existe en el folder actual"
  fi
elif [ $1 = "rf" ]; then
  if [ -f $2 ]; then
    rm $2
    echo "--- Archivo $2 eliminado correctamente"
  else
    echo "--- Archivo no existe en el folder actual"
  fi
else
  echo "--- Opción $1 no implementada"
fi

