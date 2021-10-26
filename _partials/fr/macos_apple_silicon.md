## Processeurs Apple Silicon

Si tu as acheté ton ordinateur après fin 2020, il est probable qu’il soit équipé d’un nouveau processeur Apple Silicon au lieu de l’ancien processeur Intel : vérifions ça ensemble.

Ouvre une nouvelle fenêtre de terminal depuis Applications > Utilitaires ou fais une recherche avec [Spotlight](https://support.apple.com/fr-fr/HT204014) :

![Ouvrir Terminal sur macOS](images/macos_open_terminal.png)

Copie-colle la commande suivante dans le terminal et appuie sur `ENTRÉE` pour l’exécuter.

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lewagon/setup/master/utils/macos_list_processor_type.sh)"
```

☝️ Le résultat de la commande devrait t’indiquer si ton ordinateur utilise Apple Silicon.

Si ton ordinateur utilise Apple Silicon, affiche et lis le paragraphe ci-dessous. Sinon, n’en tiens pas compte.

<details>
  <summary>👉&nbsp;&nbsp;Setup pour Apple Silicon 👈</summary>

### Désinstaller Homebrew

Si une version native de Homebrew est installée sur ton ordinateur, tu dois la désinstaller.

Exécute la commande suivante dans le terminal :

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

Si brew n’est pas installé, tu verras apparaître le message suivant  : `brew: command not found!`

### Configurer le terminal pour Rosetta

Ouvre le Finder (ou fais une recherche avec [Spotlight](https://support.apple.com/fr-fr/HT204014).

Va dans Applications > Utilitaires.

Duplique l’application Terminal (sélectionne-la, puis `CMD` + `C`, `CMD` + `V`) et renomme la copie Terminal Rosetta.

Appuie sur `CMD` + `I` sur l’application Terminal Rosetta, puis coche la case « Ouvrir avec Rosetta ».

⚠️ À partir de maintenant, et pendant tout le bootcamp, quand on te demandera d’ouvrir un terminal, il faudra utiliser l’application **Terminal Rosetta**.

</details>
