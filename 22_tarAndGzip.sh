#!/bin/bash
#Author: Alberto Ortiz

echo "Empaquetar scripts actuales en dir actual"

tar -cvf shellCourse.tar *.sh

gzip shellCourse.tar

#Existe otro comando llamado pbzip2 que es multicore

