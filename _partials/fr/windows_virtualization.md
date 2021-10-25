## Virtualisation

On doit vérifier que les options de virtualisation sont activées dans le BIOS de ton ordinateur.

C’est déjà le cas sur de nombreux ordinateurs. Vérifions :

-   Appuie sur `Windows` + `R`
-   Saisis `taskmgr`
-   Appuie sur `ENTRÉE`
-   Clique sur l’onglet `Performance`
-   Clique sur `CPU`

![Gestionnaire des tâches de Windows](images/windows_task_manager.png)

:heavy_check_mark: Si tu vois « Virtualisation : activée », c’est bon :+1:

:x: Si la ligne est manquante ou si la virtualisation est désactivée, **demande au prof avant d’essayer d’activer la virtualisation**


<details>
  <summary>Activer la virtualisation</summary>

  On a besoin d’accéder au BIOS / à l’UEFI de l’ordinateur pour activer la virtualisation.

-   Appuie sur `Windows + R`
-   Saisis `shutdown.exe /r /o /t 1`
-   Appuie sur `ENTRÉE`
-   Attends que l’ordinateur s’arrête
-   Clique sur `Troubleshoot`
-   Clique sur `Advanced Options`
-   Clique sur `UEFI Firmware Settings`
-   Clique sur `Restart`

Tu dois activer l’option de virtualisation de ton processeur ici :

-   La plupart du temps, dans les paramètres avancés, les paramètres du processeur ou les paramètres Northbridge
-   L’option peut avoir un nom différent en fonction de ton ordinateur :

-   Intel : `Intel VT-x`, `Intel Virtualization Technology`, `Virtualization Extensions`, `Vanderpool`...
-   AMD : `SVM Mode` ou `AMD-V`
-   Enregistre les modifications après activation et redémarre l’ordinateur en utilisant l’option correspondante
</details>
