#!/bin/bash
#Author: Alberto Ortiz

echo "Escribir en un archivo"

# >> crea si no existe, append si existe
# > crea si no existe, reemplaza si existe
echo "Valores escritos con el comando echo" >> $1

cat <<EOM >> $1
$2
EOM

