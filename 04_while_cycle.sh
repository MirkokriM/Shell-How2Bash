#!/bin/bash

# Inizializziamo una variabile contatore a 1
counter=1

# Utilizziamo un ciclo while per stampare i numeri da 1 a 5
while ((counter <= 5)); do
  echo "Il valore del contatore è: $counter"
  counter=$((counter + 1)) # Incrementiamo il contatore di 1 ad ogni iterazione
done

echo "Il ciclo while è terminato."
