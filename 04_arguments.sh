#!/bin/bash
#Author: Alberto Ortiz

text="Parámetro especial"

#Imprime el nombre del script
printf "$text: \$0\n"
echo "El nombre del script es: $0"

#Imprime el número de argumentos
printf "\n$text \$#\n"
echo "Se cuentan con $# parámetros"

#Lista todos los parámetros
printf "\n$text \$*\n"
echo "Parámetros (en un solo argumento): $*"

#Lista todos los parámetros (uno por argumento)
printf "\n$text \$@\n"
echo "Parámetros (un párametro por argumento): "

for parameter in $@
do
  echo $parameter
done

#Imprime el PID del script
printf "\n$text \$$\n"
echo "El PID del script ejecutado es: $$"

#Crea un proceso en segundo plano
printf "\n$text \$!\n"
echo "Abriendo proceso en segundo plano ...."
sleep 10 &

#Imprime el PID del proceso ejecutado en segundo plano
echo "El PID del proceso ejecutandose en segundo plano es: $!"

#Imprime el código de retorno del último comando, aquí echo
printf "\n$text \$?\n"
echo "El código de retorno del comando es: $?"

