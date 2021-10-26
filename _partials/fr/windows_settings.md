## Paramètres Windows

### Échanger des fichiers entre Windows et Ubuntu

On a besoin d’un moyen simple pour transférer des fichiers de Windows à Ubuntu et inversement.

Pour cela, on va créer des raccourcis vers les répertoires Ubuntu dans l’**explorateur de fichiers** Windows :
- Ouvre l’explorateur de fichiers Windows (ou utilise le raccourci `WIN` + `E`)
- Dans la barre d’adresse, saisis `\\wsl$\` (ou `\\wsl$\Ubuntu` si la première option ne fonctionne pas)
- Tu as désormais accès au système de fichiers Ubuntu
- Parcours le système de fichiers Ubuntu à la recherche des répertoires qui t’intéressent
- Fais glisser les répertoires souhaités dans la barre d’adresse pour créer des raccourcis

![Comment ajouter un raccourci au système de fichiers Ubuntu sous Windows](images/windows_ubuntu_file_system_shortcut.gif)

### Ouvrir l’explorateur de fichiers Windows à partir du terminal Ubuntu

Un autre moyen pour déplacer les fichiers consiste à ouvrir l’**explorateur de fichiers Windows** à partir du terminal Ubuntu :
- Ouvre un terminal Ubuntu
- Va dans le répertoire que tu souhaites parcourir
- Exécute la commande `explorer.exe .` (ou `wslview .`)
- Si tu obtiens un message d’erreur, exécute `wsl --shutdown` dans un Windows PowerShell et rouvre un terminal Ubuntu

![Comment lancer l’explorateur Windows à partir du terminal Ubuntu](images/windows_explorer_from_terminal.png)

### Trouver ton chemin dans le système de fichiers Ubuntu

Il se peut que tu aies besoin de connaître l’emplacement exact d’un répertoire Windows dans le système de fichiers Ubuntu ou l’inverse.

Pour convertir un chemin Windows en chemin Ubuntu et inversement :
- Ouvre un terminal Ubuntu
- Utilise la commande `wslpath "C:\Program Files"` pour traduire un chemin Windows en chemin Ubuntu
- Utilise la commande `wslpath -w "/home"` pour traduire un chemin Ubuntu en chemin Windows
- La commande `wslpath -w $(pwd)` renvoie le chemin Windows vers le répertoire Ubuntu actuel

![Comment accéder à un chemin Ubuntu depuis un terminal Ubuntu](images/windows_path_from_terminal.png)

### Épingler des applications à ta barre des tâches

Tu utiliseras très souvent la plupart des applications que tu as installées aujourd’hui. Épingle-les à ta barre des tâches pour y accéder en un seul clic !

Pour épingler une application à ta barre des tâches, lance l’application, fais un clic droit sur l’icône dans la barre des tâches pour faire apparaître le menu contextuel et sélectionne « Épingler à la barre des tâches ».

![Comment épingler une application à la barre des tâches dans Windows](images/windows_taskbar.png)

Tu dois épingler :
- ton terminal
- ton explorateur de fichiers
- VS Code
- ton navigateur Internet
- Slack
- Zoom
