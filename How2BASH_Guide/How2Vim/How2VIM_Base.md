# Cheatsheet di Vim

## Introduzione a Vim

Vim è un potente editor di testo a riga di comando disponibile su diverse piattaforme. Può sembrare intimidatorio all'inizio, ma con un po' di pratica diventerai più efficiente e scoprirai perché è così amato dagli sviluppatori.

### Installazione

#### Su Linux e distribuzioni basate su Debian (Ubuntu, Linux Mint, etc.)

Per installare Vim su sistemi Linux e distribuzioni basate su Debian, apri un terminale e digita il seguente comando:

```bash
sudo apt update
sudo apt install vim
```

#### Su Fedora

Su sistemi Fedora, puoi installare Vim con DNF (il gestore di pacchetti di Fedora). Apri un terminale e digita:

```bash
sudo dnf install vim
```

#### Su macOS

Su macOS, Vim è preinstallato di default. Puoi verificarlo aprendo il Terminale e digitando `vim`. Se non fosse installato, segui le istruzioni per installare [Homebrew](https://brew.sh/) e poi esegui:

```bash
brew install vim
```

### Installazione su Termux (Android)

Se vuoi utilizzare Vim su Termux (un emulatore di terminale per Android), segui questi passaggi:

1. Installa Termux dal [Google Play Store](https://play.google.com/store/apps/details?id=com.termux).

2. Apri Termux e aggiorna il suo elenco dei pacchetti eseguendo il seguente comando:

```bash
pkg update
```

3. Installa Vim con il seguente comando:

```bash
pkg install vim
```

### Comandi di Base

1. **Avviare Vim**: Apri un file con Vim usando il comando:
   ```bash
   vim nome_file
   ```

2. **Modalità di Inserimento**: Premi `i` per entrare in modalità di inserimento e iniziare a scrivere. Premi `Esc` per tornare alla modalità normale.

3. **Salvare**: Per salvare il file, assicurati di essere nella modalità normale e digita:
   ```
   :w
   ```

4. **Salvare ed Uscire**: Per salvare il file e uscire da Vim, digita:
   ```
   :wq
   ```
   Puoi abbreviare questo comando con `:x`.

5. **Uscire Senza Salvare**: Se vuoi uscire senza salvare le modifiche, digita:
   ```
   :q!
   ```

### Navigare nel Documento

1. **Muoversi con le Frecce**: Usa le frecce direzionali per spostarti.

2. **Movimento Rapido**: Alcuni comandi utili per spostarsi nel documento (modalità normale):
   - `gg`: Vai alla prima riga del documento.
   - `G`: Vai all'ultima riga del documento.
   - `:n`: Vai alla riga n (sostituisci "n" con il numero desiderato).

3. **Ricerca Testo**: Per cercare un testo nel documento, digita `/` seguito dal testo cercato e premi `Invio`. Usa `n` per andare alla prossima occorrenza e `N` per tornare indietro.

### Modifica del Testo

1. **Eliminare Testo**: Per eliminare testo, assicurati di essere nella modalità normale e usa i seguenti comandi:
   - `x`: Elimina il carattere sotto il cursore.
   - `dw`: Elimina una parola.
   - `dd`: Elimina l'intera riga.

2. **Copiare e Incollare**: Per copiare e incollare, assicurati di essere nella modalità normale:
   - `yy`: Copia l'intera riga.
   - `p`: Incolla il testo dopo il cursore.
   - `P`: Incolla il testo prima del cursore.

3. **Annullare e Ripetere**: Per annullare e ripetere le azioni, usa i seguenti comandi:
   - `u`: Annulla l'ultima azione.
   - `Ctrl + r`: Ripeti l'azione annullata.

4. **Copia, Taglia e Incolla Multiple**: In modalità normale:
   - `Nyy`: Copia N righe (es. `2yy` copia due righe).
   - `Ndd`: Taglia N righe (es. `3dd` taglia tre righe).
   - `Np`: Incolla il testo N volte dopo il cursore (es. `4p` incolla il testo quattro volte).

### Modalità Visuale

1. **Modalità Visuale**: Premi `v` per entrare nella modalità visuale. In questa modalità, puoi selezionare il testo con le frecce direzionali.

2. **Selezione di Righe**: Premi `V` per selezionare intere righe in modalità visuale.

### Ricerca e Sostituzione

1. **Sostituire Testo**: Per sostituire testo, assicurati di essere nella modalità normale:
   ```
   :s/vecchio/nome_nuovo/
   ```
   Aggiungi `g` alla fine per sostituire tutte le occorrenze nella riga.

2. **Sostituire Globalmente**: Per sostituire globalmente nel documento, usa:
   ```
   :%s/vecchio/nome_nuovo/g
   ```

### Comandi per la Visualizzazione

1. **Creare una Nuova Finestra**: In modalità normale, digita il comando seguente per creare una nuova finestra verticale:

   ```
   :split
   ```

   Puoi anche usare la sua abbreviazione:

   ```
   :sp
   ```

   Questo dividerà la finestra corrente in due parti, consentendoti di visualizzare due porzioni diverse del documento contemporaneamente.

2. **Cambiare Finestra**: Per passare alla nuova finestra, usa i seguenti comandi:

   - `Ctrl + w + ↑`: Passa alla finestra sopra.
   - `Ctrl + w + ↓`: Passa alla finestra sotto.
   - `Ctrl + w + →`: Passa alla finestra a destra.
   - `Ctrl + w + ←`: Passa alla finestra a sinistra.

Puoi ripetere il comando `:split` o `:sp` per suddividere ulteriormente la finestra corrente in più parti. Per chiudere una finestra, posizionati su di essa e digita `:q`. Se ci sono più finestre aperte, `:q` chiuderà solo la finestra corrente, lasciando le altre aperte.

1. **Scorrimento**: In modalità normale, usa:
   - `Ctrl + f`: Scorri avanti (come "Avanti" sulla tastiera).
   - `Ctrl + b`: Scorri indietro (come "Indietro" sulla tastiera).
   - `Ctrl + u`: Scorri di mezza pagina su.
   - `Ctrl + d`: Scorri di mezza pagina giù.
   - `Ctrl + e`: Scorri una riga verso il basso.
   - `Ctrl + y`: Scorri una riga verso l'alto.

### Comandi Utili

1. **Cambia Indentazione**: In modalità normale, per indentare:
   - `>>`: Indenta la riga corrente.
   - `<<`: Rimuove l'indentazione dalla riga corrente.

2. **Cambia Maiuscole/Minuscole**: In modalità normale, per cambiare il case:
   - `~`: Cambia il case del carattere sotto il cursore.
