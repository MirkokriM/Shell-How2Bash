#!/bin/bash

echo "Inserisci il primo numero:"
read num1

echo "Inserisci il secondo numero:"
read num2

echo "Inserisci l'operatore (+, -, *, /):"
read operator

if [[ $operator == "+" ]]; then
  result=$((num1 + num2))
elif [[ $operator == "-" ]]; then
  result=$((num1 - num2))
elif [[ $operator == "*" ]]; then
  result=$((num1 * num2))
elif [[ $operator == "/" ]]; then
  result=$((num1 / num2))
else
  echo "Operatore non valido!"
  exit 1
fi

echo "Il risultato del calcolo è: $result"
