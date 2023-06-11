#!/bin/bash
#Author: Alberto Ortiz

option=0

instalar_postgres() {
  echo -e "\nInstalando PostgreSQL"
  sleep $1
}

desinstalar_postgre() {
  echo -e "\nDesinstalando PostgreSQL"
  sleep $1
}

realizar_respaldo() {
  echo -e "\nRealizando respaldo"
  sleep $1
}

saliendo_programa() {
  echo -e "\nEstas saliendo del programa"
  sleep $1
  exit 0
}

while :
do

  clear

  echo "-----------------------------------------"
  echo "Programa de utilidad de PostgreSQL"
  echo "-----------------------------------------"
  echo "Menu principal"
  echo "-----------------------------------------"
  echo "1. Instalar PostgreSQL"
  echo "2. Desinstalar PostgreSQL"
  echo "3. Realizar respaldo"
  echo "0. Salir"
  echo "-------------------------------"
  
  read -n1 -p "Ingrese una opción [0-3]: " option

  case $option in
    1)
      instalar_postgres 3
      ;;
    2)
      desinstalar_postgre 3
      ;;
    3)
      realizar_respaldo 3
      ;;
    0)
      saliendo_programa 1
      ;;
    *)
      echo -e "\nOpción erronéa ..."
      sleep 3
      ;;
  esac
done

