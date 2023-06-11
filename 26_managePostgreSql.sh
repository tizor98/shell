#!/bin/bash
#Author: Alberto Ortiz

option=0
currentDate=`date +%Y%m%d`

instalar_postgres() {
  echo -e "\nVerificar instalación de PostgreSQL"
  verifyInstall=$(which psql)
  if [ $? -eq 0 ]; then
    echo -e "\nYa se encuentra instalado"

  else
    read -sp "Ingresar contraseña de sudo: " password
    echo ""
    read -sp "Ingresar contraseña a usar en psql" passwordPostgre
    echo -e "\nInstalando PostgreSQL"
    echo "$password" | sudo -S apt update
    echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgre}';"
    echo -e "\nPostgreSQL instalado"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -srp "Presione [ENTER] para continuar ..."
}

desinstalar_postgre() {
  echo ""
  read -sp "Ingresar contraseña de sudo: " password
  echo ""
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
  echo "$password" | sudo -S rm -r /etc/postgresql
  echo "$password" | sudo -S rm -r /etc/postgresql-common
  echo "$password" | sudo -S rm -r /var/lib/postgresql
  echo "$password" | sudo -S userdel -r postgres
  echo "$password" | sudo -S groupdel postgresql
  read -n 1 -srp "Presione [ENTER] para continuar ..."
}

realizar_respaldo() {
  echo ""
  read -sp "Ingresar contraseña de sudo: " password
  echo ""
  read -p "Eliga el folder dónde se guardará el respaldo: " backupFolder
  echo -e "\nLista de bases de datos"
  sudo -u postgres psql -c "\l"
  read -p "Elegir la base de datos a respaldar: " dbToBackup
  echo ""
  if [ -d "$backupFolder" ]; then
    echo "Establecer permisos dir"
    echo "$password" | sudo -S chmod 755 $backupFolder
    echo "Realizando respaldo ..."
    sudo -u postgres pg_dump -Fc $dbToBackup > "$backupFolder/bbddRespaldo$currentDate.bak"
    echo "Respaldo realizado correctamente en ubicación: $backupFolder/bbddRespaldo$currentDate.bak"
  else
    echo "El directorio $backupFolder no existe"
  fi
  read -n 1 -srp "Presione [ENTER] para continuar ..."
}

restaurar_respaldo() {
  echo -e "\nLista respaldos"
  read -p "Ingresar el directorio donde se encuentran los respaldos: " backupFolder
  echo ""
  ls -la $backupFolder
  read -p "Elige el respaldo a restaurar" backupFile
  echo ""
  read -p "Ingrese el nombre de la base de datos destino: " dbTarget
  verifyBbdd=$(sudo -u postgres psql -lqt | cut-d \| -f 1 | grep -wq $dbTarget)
  if [ $? -eq 0 ]; then
    echo "Restaurando la bbdd destino: $dbTarget"
  else
    sudo -u postgres psql -c "CREATE DATABASE $dbTarget"
  fi

  if [ -f "$backupFolder/$backupFile" ]; then
    echo "Restaurando respaldo ..."
    sudo -u postgres pg_restore -Fc -d $dbTarget "$backupFolder/$backupFile"
    echo "Lista de bases de datos"
    sudo -u postgres psql -c "\l"
  else
    echo "El respaldo $backupFile no existe"
  fi
  read -n 1 -srp "Presione [ENTER] para continuar ..."
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
  echo "4. Restaurar respaldo"
  echo "0. Salir"
  echo "-------------------------------"
  
  read -n1 -p "Ingrese una opción [0-4]: " option

  case $option in
    1)
      instalar_postgres
      ;;
    2)
      desinstalar_postgre
      ;;
    3)
      realizar_respaldo
      ;;
    4)
      restaurar_respaldo
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

