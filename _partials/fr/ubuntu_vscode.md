## Visual Studio Code

### Installation

On va maintenant installer l’éditeur de texte [Visual Studio Code](https://code.visualstudio.com).

Copie (`Ctrl` + `C`) les commandes ci-dessous, puis colle-les dans ton terminal (`Ctrl` + `Shift` + `v`) :

```bash
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

Ces commandes te demanderont ton mot de passe ; saisis-le.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

### Lancement depuis le terminal

On va maintenant lancer VS Code depuis **le terminal** :

```bash
code
```

:heavy_check_mark: Si une fenêtre VS Code s’ouvre, c’est bon. :+1:

:x: Sinon, **demande au prof**.
