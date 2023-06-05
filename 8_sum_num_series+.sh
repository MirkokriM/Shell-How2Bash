#!/bin/bash
# Questo script calcola la somma di una serie di numeri inseriti dall'utente.

# Questa riga indica che lo script deve essere eseguito utilizzando l'interprete di comandi bash.

sum=0

# Inizializza la variabile 'sum' a 0 per contenere la somma dei numeri.

echo "Inserisci una serie di numeri separati da spazio:"
read numbers

# Chiede all'utente di inserire una serie di numeri separati da spazio e assegna il valore inserito alla variabile 'numbers'.

IFS=' ' read -ra num_array <<< "$numbers"

# Imposta il separatore di campo interno (IFS) su uno spazio vuoto.
# Utilizza il comando 'read' con l'opzione '-a' per leggere la variabile 'numbers' e assegnarla all'array 'num_array'.
# Ogni numero separato da spazio viene assegnato a un elemento dell'array.

for num in "${num_array[@]}"; do

# Inizia un ciclo 'for' per iterare su ogni elemento dell'array 'num_array'.
# La variabile 'num' prende il valore di ciascun elemento dell'array ad ogni iterazione.

  sum=$((sum + num))

  # Aggiunge il valore di 'num' alla variabile 'sum' utilizzando l'operatore di assegnazione composta '+='.

done

echo "La somma dei numeri è: $sum"

# Stampa il risultato della somma dei numeri.