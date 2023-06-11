#!/bin/bash
#Author: Alberto Ortiz

echo "Empaquetar scripts de dir actual con zip asignandole una clave de seguridad"

# Nos pedirá contraseña para comprimir, la cual exigirá para descomprimir
zip -e shellCourse.zip *.sh

