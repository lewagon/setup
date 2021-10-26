## Désactiver l’invite de phrase secrète SSH

Tu veux éviter d’avoir à fournir ta phrase secrète chaque fois que tu communiques avec un dépôt de code distant. Pour cela, tu as besoin d’ajouter le plug-in `ssh-agent` à `oh my zsh` :

Commence par ouvrir le fichier `.zshrc` :

```bash
code ~/.zshrc
```

Puis :
- Localise la ligne commençant par `plugins=`
- Ajoute `ssh-agent` à la fin de la liste des plug-ins

La liste doit ressembler à ça :

```bash
plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search pyenv ssh-agent)
```

:heavy_check_mark: Enregistre le fichier `.zshrc` à l’aide des touches `CTRL` + `S` et ferme ton éditeur de texte.
