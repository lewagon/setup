## Paramètres Ubuntu

### Installer le codec vidéo H264

Sur notre plateforme pédagogique (Kitt, que tu découvriras bientôt), on propose des vidéos. Par défaut, Firefox sur Linux ne peut pas les lire, car elles utilisent un codec qui n’est pas pris en charge (H264). Pour pouvoir lire ces vidéos, tu dois exécuter la commande suivante :

```bash
sudo apt install libavcodec-extra -y
```

### Installer des outils de terminal utiles

`tree` est un outil pratique qui permet de visualiser une arborescence de dossiers à l’intérieur du terminal.

`ncdu` est un utilitaire de disque à interface texte.

`htop` est un visualiseur de processus interactif.

`tig` est une interface en mode texte pour `git`.

```bash
sudo apt install tree ncdu htop tig
```

### inotify Ubuntu

Ubuntu surveille toutes les modifications apportées à tes dossiers ; pour cela, il utilise inotify.
Par défaut, la limite Ubuntu est fixée à 8 192 fichiers surveillés.

La programmation implique de travailler avec un grand nombre de fichiers ; on doit donc relever cette limite.
Dans ton terminal, exécute :

```bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

### Épingler des applications à ton Dock

Tu utiliseras très souvent la plupart des applications que tu as installées aujourd’hui. Épingle-les pour y accéder en un seul clic !

Pour épingler une application à ton Dock, lance l’application, fais un clic droit sur l’icône dans le Dock pour faire apparaître le menu contextuel et choisis « Ajouter aux favoris ».

![Comment épingler une application au Dock dans Ubuntu](images/ubuntu_dock.png)

Tu dois épingler :
- ton terminal
- ton explorateur de fichiers
- VS Code
- ton navigateur Internet
- Slack
