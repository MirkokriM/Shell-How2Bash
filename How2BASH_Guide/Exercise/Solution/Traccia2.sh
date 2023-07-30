#!/bin/bash

echo "Inserisci una parola:"
read word

count=0

for ((i = 0; i < ${#word}; i++)); do
  char="${word:$i:1}"
  if [[ $char == [aeiouAEIOU] ]]; then
    count=$((count + 1))
  fi
done

echo "Il numero di vocali nella parola è: $count"
