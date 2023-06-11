#!/bin/bash
#Author: Alberto Ortiz

# Aquí no se usa ssh en realidad, para eso consultar comando SCP
echo "Empaquetar y transferir por la red a otro equipo utilizando comando rsync"

host=""
user=""
isCorrect=""

read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " user
echo -e "\nSe procederá a empaquetar la carpeta y a transferirla"

#para transferir entre diferentes maquinas rsync -avz $(pwd) $user@$host:/home/tizor
rsync -av --dry-run $(pwd) $HOME

read -p "¿Quieres seguir con la transferencia? (y/N): " isCorrect

case $isCorrect in
  [yY])
    rsync -avz $(pwd) $HOME
    exit 0
    ;;
  *) 
    echo "Operación abortada"
    exit 0
    ;;
esac

