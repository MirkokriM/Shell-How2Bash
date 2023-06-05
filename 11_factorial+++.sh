#!/bin/bash
# Questo script calcola e stampa il fattoriale di un numero inserito dall'utente.

# Questa riga indica che lo script deve essere eseguito utilizzando l'interprete di comandi bash.

# Funzione per calcolare il fattoriale di un numero
function factorial() {
  if (( $1 == 0 )); then
    echo 1
  else
    local prev=$(factorial $(( $1 - 1 )))
    echo $(( $1 * prev ))
  fi
}

# Definizione di una funzione chiamata 'factorial' per calcolare il fattoriale di un numero.
# La funzione utilizza la ricorsione per calcolare il fattoriale.
# Se il numero passato alla funzione è 0, restituisce 1.
# Altrimenti, la funzione calcola il fattoriale del numero decrementato di 1 e lo moltiplica per il numero stesso.

# Chiedi all'utente di inserire un numero
echo "Inserisci un numero:"
read number

# Chiede all'utente di inserire un numero e assegna il valore inserito alla variabile 'number'.

# Verifica se il numero è un intero positivo
re='^[0-9]+$' #^: inizio stringa; [0-9]+: numeri da 0 a 9 che possono ripetersi; $:fine della stringa.
if ! [[ $number =~ $re ]] || (( number <= 0 )); then
  echo "Il numero inserito non è valido."
  exit 1
fi

# Verifica se il valore inserito è un intero positivo.
# La variabile 're' contiene un'espressione regolare che corrisponde a interi positivi.
# Se il valore inserito non corrisponde all'espressione regolare o è minore o uguale a 0, viene stampato un messaggio di errore e lo script termina con il codice di uscita 1.

# Calcola il fattoriale del numero
result=$(factorial $number)

# Chiama la funzione 'factorial' passando il numero inserito e assegna il risultato alla variabile 'result'.

# Stampa il risultato
echo "Il fattoriale di $number è $result."

# Stampa il messaggio che indica il valore del fattoriale del numero inserito.