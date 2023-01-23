## Associer ton navigateur par défaut à Ubuntu

Pour que tu puisses interagir avec le navigateur installé sous Windows depuis ton terminal Ubuntu, on doit le définir comme navigateur par défaut.

:warning: Tu dois exécuter au moins une des commandes ci-dessous :

<details>
 <summary>Google Chrome est ton navigateur par défaut</summary>

Exécute la commande :

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

Si tu obtiens une erreur du type `ls: cannot access...`, exécute la commande suivante :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

  Sinon, exécute :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
 <summary>Mozilla Firefox est ton navigateur par défaut</summary>

  Exécute la commande :

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

  Si tu obtiens une erreur du type `ls: cannot access...`, exécute la commande suivante :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```

  Sinon, exécute :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
 <summary>Microsoft Edge est ton navigateur par défaut</summary>

  Exécute la commande :

  ```bash
  echo "export BROWSER='\"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe\"'" >> ~/.zshrc
  ```
</details>

Redémarre ton terminal.

Puis vérifie que la commande suivante renvoie « Browser defined 👌 » :

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

Si ce n’est pas le cas,

:heavy_check_mark: Si tu vois apparaître ce message, tu peux continuer :+1:

:x: Sinon, choisis un navigateur dans la liste ci-dessus et exécute la commande correspondante. Puis n’oublie pas de réinitialiser ton terminal :

```bash
exec zsh
```

N’hésite pas à **demander au prof**.
