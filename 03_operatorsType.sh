#!/bin/bash
#Dedicado a revisar tipos de operadores
#Author: Alberto Ortiz

numA=10
numB=4

echo "Números: A:$numA y B:$numB"
echo "----------------------"

echo "Operadores aritméticos"
echo "A + B = " $((numA + numB))
echo "A - B = " $((numA - numB))
echo "A * B = " $((numA * numB))
echo "A / B = " $((numA / numB))
echo "A % B = " $((numA % numB))

echo "----------------------"

echo "Operadores relacionales"
echo "A > B = " $((numA > numB))
echo "A < B = " $((numA < numB))
echo "A >= B = " $((numA >= numB))
echo "A <= B = " $((numA <= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))

echo "----------------------"

echo "Operadores asignación"
echo "A += B " $((numA += numB))
echo "A -= B " $((numA -= numB))
echo "A *= B " $((numA *= numB))
echo "A /= B " $((numA /= numB))
echo "A %= B " $((numA %= numB))

