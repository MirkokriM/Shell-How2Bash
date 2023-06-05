#!/bin/bash
# Questo script legge un file linea per linea e stampa ogni linea.

# Questa riga indica che lo script deve essere eseguito utilizzando l'interprete di comandi bash.

echo "Inserisci il percorso del file da leggere:"
read file

# Chiede all'utente di inserire il percorso di un file da leggere e assegna il valore inserito alla variabile 'file'.

if [ -f "$file" ]; then

# Verifica se il file esiste utilizzando l'opzione '-f' del comando 'test'. Se il file esiste, l'esecuzione continua.

  echo "Contenuto del file $file:"

  # Stampa un messaggio che indica il nome del file.

  while IFS= read -r line; do

  # Inizia un ciclo 'while' per leggere il file linea per linea.
  # L'opzione '-r' del comando 'read' evita che i backslash vengano interpretati come caratteri di escape.
  # La variabile 'line' viene utilizzata per salvare ogni linea letta.

    echo "$line"

    # Stampa la linea letta.

  done < "$file"

  # Utilizza il redirect '<' per specificare che il ciclo 'while' leggerà il file indicato dalla variabile 'file'.

else
  echo "$file non è un file valido."
fi

# Se il file specificato dall'utente non esiste, viene stampato un messaggio di errore.
