#!/bin/bash
#Author: Alberto Ortiz

option=0
backupName=""

echo "Programa utilidades Postgres"
echo -n "Ingresar una opción: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opción: $option, Backup Name: $backupName"

echo "_______________________________"

echo "Programa utilidades Postgres v2"
read -p "Ingresar una opción: " option2
read -p "Ingresar el nombre del archivo del backup: " backupName2
echo -n "Ingresa la contraseña: "
read -s dbPassword
echo ""
echo "Option2: $option2, Backup Name 2: $backupName2, Password: $dbPassword"

