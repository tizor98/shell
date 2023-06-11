#!/bin/bash
#Author: Alberto Ortiz

numArray=(1 2 3 4 5)
strArray=(Brayan Alberto Pedro Juan Susana)
rangeArray=({A..Z} {10..20})

echo "---------Elementos-----------"

echo "Numbers array: ${numArray[*]}"
echo "String array: ${strArray[*]}"
echo "Range array: ${rangeArray[*]}"

echo "---------Tamaño-----------"

echo "Numbers array: ${#numArray[*]}"
echo "String array: ${#strArray[*]}"
echo "Range array: ${#rangeArray[*]}"

echo "---------Posición-3-----------"

echo "Numbers array: ${numArray[3]}"
echo "String array: ${strArray[3]}"
echo "Range array: ${rangeArray[3]}"


echo "---------Asignar-valores-----------"

numArray[2]=20
unset strArray[2]
echo "Numbers array: ${numArray[*]}"
echo "String array: ${strArray[*]}"

