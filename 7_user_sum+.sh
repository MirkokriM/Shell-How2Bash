#!/bin/bash
# Questo script calcola la somma di due numeri inseriti dall'utente.

echo "Inserisci il primo numero:"
read num1

echo "Inserisci il secondo numero:"
read num2

sum=$((num1 + num2))
echo "La somma di $num1 e $num2 è $sum."