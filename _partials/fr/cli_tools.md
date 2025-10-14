## Outils en ligne de commande

### Vérifier la locale

Le concept de "locale" permet de personnaliser les programms en fonction de ta langue et ton pays.

Vérifions que la locale est bien en **anglais** dans le terminal :

```bash
locale
```

Si la commande ne renvoie pas quelque chose qui contient `LANG=en_US.UTF-8`, lance ceci dans un terminal Ubuntu :

```bash
sudo locale-gen en_US.UTF-8
```

Si après, tu reçois un avertissement (`bash: warning: setlocale: LC_ALL: cannot change locale (en_US.utf-8)`) dans ton terminal, veuillez faire ce qui suit :

<details>
  <summary>Générer la localisation</summary>

Veuillez exécuter ces lignes dans ton terminal.

```bash
sudo update-locale LANG=en_US.UTF8
sudo apt-get update
sudo apt-get install language-pack-en language-pack-en-base manpages
```
</details>

### Zsh & Git

Au lieu d’utiliser le [shell](https://fr.wikipedia.org/wiki/Interface_syst%C3%A8me) `bash` par défaut, nous utiliserons `zsh`.

Nous utiliserons aussi [`git`](https://git-scm.com/), un logiciel en ligne de commande utilisé pour la gestion de versions.

Installons-les, avec d'autres outils utiles :
- Ouvre un terminal
- Copie-colle les commandes suivantes :

```bash
sudo apt update
```

```bash
sudo apt install -y curl git imagemagick jq unzip vim zsh
```

Ces commandes te demanderont ton mot de passe ; saisis-le.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `Enter`.

### Installation de GitHub CLI

On va maintenant installer la [CLI officielle de GitHub](https://cli.github.com) (Command Line Interface, interface en ligne de commande). Il s’agit d’un logiciel qui te permet d’interagir avec ton compte GitHub via la ligne de commande.

Copie-colle les commandes suivantes dans ton terminal et saisis ton mot de passe s’il t’est demandé :

```bash
sudo apt remove -y gitsome # gh command can conflict with gitsome if already installed
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
```

Pour vérifier que `gh` a bien été installé sur ta machine, tu peux exécuter :

```bash
gh --version
```

:heavy_check_mark: Si tu vois apparaître `gh version X.Y.Z (YYYY-MM-DD)`, c’est bon :+1:

:x: Sinon, **demande au la prof**.
