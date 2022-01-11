## Windows Terminal

### Installation

:information_source: Les instructions suivantes dépendent de ta version de Windows.

Si tu as Windows 11, le Windows Terminal est déjà installé et tu peux passer à la section suivante :point_down:

Si tu as Windows 10, nous allons installer le Windows Terminal, un terminal vraiment moderne :

- Clique sur `Démarrer`
- Saisis `Microsoft Store`
- Clique sur `Microsoft Store` dans la liste
- Recherche `Windows Terminal` dans la barre de recherche
- **Sélectionne Windows Terminal**
- Clique sur `Installer`

:warning: N’installe PAS **Windows Terminal Preview**, uniquement **Windows Terminal** !

<details>
  <summary>Désinstaller la mauvaise version de Windows Terminal</summary>

  Pour désinstaller une mauvaise version de Windows Terminal, il te suffit d’aller dans la liste des programmes installés de Windows 10 :

  - Appuie sur `Windows` + `R`
  - Saisis `ms-settings:appsfeatures`
  - Appuie sur `ENTRÉE`

  Trouve le logiciel à désinstaller et clique sur le bouton de désinstallation.
</details>

Une fois l’installation terminée, le bouton « Installer » se transforme en bouton « Lancer » ; clique dessus.

### Définir Ubuntu comme terminal par défaut

On va définir Ubuntu comme terminal par défaut de ton application Windows Terminal.

Appuie sur `Ctrl` + `,`

pour ouvrir les paramètres du terminal :

![Paramètres de Windows Terminal](images/windows_terminal_settings.png)

- Remplace le profil par défaut par « Ubuntu »
- Clique sur « Enregistrer »
- Clique sur « Ouvrir le fichier JSON »

La partie à modifier est entourée en rouge :

[Fichier de paramètres JSON de Windows Terminal](images/windows\_terminal\_settings\_json.png)

On va commencer par demander à Ubuntu de démarrer directement dans ton répertoire personnel Ubuntu au lieu du répertoire Windows :
- Recherche `"name": "Ubuntu",`
- Ajoute la ligne suivante après :

```bash
"commandline": "wsl.exe ~",
```

:warning: N’oublie pas la virgule à la fin de la ligne !

On va ensuite désactiver les avertissements pour les commandes de copier-coller entre Windows et Ubuntu :
- Recherche la ligne `"defaultProfile": "{2c4de342-...}"`
- Ajoute la ligne suivante après :

```bash
"multiLinePasteWarning": false,
```

:warning: N’oublie pas la virgule à la fin de la ligne !

Tu peux enregistrer ces modifications en appuyant sur `Ctrl` + `S`

:heavy_check_mark: Ton **Windows Terminal** est maintenant configuré :+1:

Ce terminal a des onglets ; tu peux choisir d’ouvrir un nouvel onglet de terminal en cliquant sur **+** à côté de l’onglet actuel.

**Désormais, chaque fois que l'on fera référence au terminal ou à la console, il s’agira de celui-ci.** N’utilise PLUS aucun autre terminal.
