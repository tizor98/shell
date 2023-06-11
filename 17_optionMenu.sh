#!/bin/bash
#Author: Alberto Ortiz

option=0

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
      echo -e "\nInstalando PostgreSQL ..."
      sleep 3
      ;;
    2)
      echo -e "\nDesinstalando PostgreSQL ..."
      sleep 3
      ;;
    3)
      echo -e "\nRealizando respaldo ..."
      sleep 3
      ;;
    0)
      echo -e "\nEstas saliendo del programa ..."
      sleep 1
      exit 0
      ;;
    *)
      echo -e "\nOpción erronéa ..."
      sleep 3
      ;;
  esac
done

