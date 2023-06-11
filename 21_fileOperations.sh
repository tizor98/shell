#!/bin/bash
#Author: Alberto Ortiz

dirName="backupScripts"

mkdir -m 744 $dirName

echo -e  "\nCopiar scripts de directorio actual al directorio $dirName"

cp *.* $dirName
ls -la $dirName

echo -e "\nMover el directorio $dirName a otra ubicación: $HOME"
mv $dirName $HOME
ls -la $HOME

echo -e "\nEliminar archivos .txt"
rm *.txt

