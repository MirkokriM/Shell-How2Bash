#!/bin/bash
# Questo script cerca una parola in un file e restituisce il numero di occorrenze.

# Questa riga indica che lo script deve essere eseguito utilizzando l'interprete di comandi bash.

echo "Inserisci la parola da cercare:"
read word

# Chiede all'utente di inserire una parola e assegna il valore inserito alla variabile 'word'.

echo "Inserisci il percorso del file:"
read file

# Chiede all'utente di inserire il percorso di un file e assegna il valore inserito alla variabile 'file'.

if [ -f "$file" ]; then

# Verifica se il file esiste utilizzando l'opzione '-f' del comando 'test'. Se il file esiste, l'esecuzione continua.

  occurrences=$(grep -o -i "$word" "$file" | wc -l)

  # Utilizza il comando 'grep' per cercare la parola nel file. 
  # Le opzioni '-o' e '-i' indicano rispettivamente di visualizzare 
  # solo le corrispondenze e di ignorare la differenza tra lettere maiuscole e minuscole.

  # Il risultato di 'grep' viene passato al comando 'wc -l' che conta 
  # il numero di righe, cioè il numero di occorrenze della parola nel file.
  # Il numero di occorrenze viene assegnato alla variabile 'occurrences'.

  echo "La parola '$word' compare $occurrences volte nel file."

  # Stampa il messaggio che indica il numero di occorrenze trovate nel file.

else
  echo "$file non è un file valido."
fi

# Se il file specificato dall'utente non esiste, viene stampato un messaggio di errore.