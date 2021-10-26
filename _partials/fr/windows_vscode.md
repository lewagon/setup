## Visual Studio Code

### Installation

On va maintenant installer l’éditeur de texte [Visual Studio Code](https://code.visualstudio.com).

- Va sur la [page de téléchargement de Visual Studio Code](https://code.visualstudio.com/download).
- Clique sur le bouton « Windows »
- Ouvre le fichier que tu viens de télécharger.
- Installe-le avec peu d’options :

![Options d’installation de VS Code](images/windows_vscode_installation.png)

Une fois l’installation terminée, lance VS Code.

### Connecter VS Code à Ubuntu

Tu devrais voir un cadre dans le coin inférieur droit de VS Code indiquant qu’il détecte WSL. Accepte l’installation de l’extension de WSL pour VS Code.

:warning: Cette extension est obligatoire pour utiliser VS Code !

```bash
code --install-extension ms-vscode-remote.remote-wsl
```

Then open VS Code from your terminal:

```bash
code .
```

:heavy_check_mark: Si tu vois `WSL: Ubuntu` dans une case verte dans le coin inférieur gauche de la fenêtre VS Code, c'est tout bon :+1:

![WSL Ubuntu Remote](images/windows_remote_wsl.png)

:x: Sinon, **demande au prof**
