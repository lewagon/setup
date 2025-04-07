## Sous-système Windows pour Linux (WSL)

WSL est l’environnement de développement que l’on utilise pour exécuter Ubuntu. Pour en savoir plus sur WSL, [consulte cette page](https://docs.microsoft.com/fr-fr/windows/wsl/faq).

Nous allons installer WSL 2 et Ubuntu en une seule commande via le Windows Command Prompt.

:warning: Dans les instructions suivantes, utilise la combinaison de touches `Ctrl` + `Shift` + `Enter` pour exécuter **Windows Command Prompt** en tant qu’administrateur au lieu de cliquer simplement sur `Ok` ou d’appuyer sur `Enter`.

- Appuie sur `Windows` + `R`
- Saisis `cmd`
- Appuie sur **`Ctrl` + `Shift` + `Enter`**

:warning: Tu devras peut-être accepter la confirmation UAC concernant l’octroi des droits d’administrateur.

Une fenêtre de terminal apparaîtra :
- Copie la commande suivante (`Ctrl` + `C`)
- Colle-la dans la fenêtre du terminal (`Ctrl` + `V` ou en faisant un clic droit dans la fenêtre)
- Exécute-les en appuyant sur `Enter`

```powershell
wsl --install
```

:heavy_check_mark: Si la commande s’exécute sans erreur, redémarre ton ordinateur et suis les instructions ci-dessous :+1:

:x: Si tu obtiens un message d’erreur (ou si tu vois apparaître du texte en rouge dans la fenêtre), **demande au prof**.

<details>
<summary>Dépannage pour Windows 10 (uniquement si nécessaire, vérifie avec un professeur)</summary>

#### Pour Windows 10 < 2004 : installer d'abord WSL 1

:warning: Dans les instructions suivantes, utilise la combinaison de touches `Ctrl` + `Shift` + `Enter` pour exécuter **Windows PowerShell** en tant qu’administrateur au lieu de cliquer simplement sur `Ok` ou d’appuyer sur `Enter`.

- Appuie sur `Windows` + `R`
- Saisis `powershell`
- Appuie sur **`Ctrl` + `Shift` + `Enter`**

:warning: Tu devras peut-être accepter la confirmation UAC concernant l’octroi des droits d’administrateur.

Une fenêtre de terminal bleue apparaîtra :
- Copie les commandes suivantes une par une (`Ctrl` + `C`)
- Colle-les dans la fenêtre PowerShell (`Ctrl` + `V` ou en faisant un clic droit dans la fenêtre)
- Exécute-les en appuyant sur `Enter`

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

:heavy_check_mark: Si les trois commandes s’exécutent sans erreur, redémarre ton ordinateur et suis les instructions ci-dessous :+1:

:x: Si tu obtiens un message d’erreur (ou si tu vois apparaître du texte en rouge dans la fenêtre), **demande au prof**

#### Pour Windows 10 avec WSL 1 : Mise à niveau vers WSL 2

Si tu as Windows 10, on va maintenant mettre à jour WSL à la version 2.

Une fois que ton ordinateur a redémarré, on doit télécharger le programme d’installation de WSL 2.

- Va sur la [page de téléchargement](https://aka.ms/wsl2kernel)
- Télécharge le « WSL2 Linux kernel update package 2 »
- Ouvre le fichier que tu viens de télécharger
- Clique sur `Suivant`
- Clique sur `Terminer`

![Mettre à jour WSL de la version 1 à 2](images/windows_update_wsl.png)

:heavy_check_mark: Si tu ne rencontres aucun message d’erreur, c’est bon :+1:

:x: Si tu obtiens l’erreur « Cette mise à jour s’applique seulement aux machines avec le sous-système Windows pour Linux », **fais un clic droit** sur le programme et sélectionne `uninstall` ; tu devrais pouvoir l’installer normalement cette fois-ci.

#### Pour Windows 10 avec WSL 1 : Définir WSL 2 comme sous-système Windows pour Linux par défaut

Si tu as Windows 10, on va enfin définir la version 2 de WSL comme étant la version par défaut.

Maintenant que WLS 2 est installé, on va le définir comme version par défaut :
- Appuie sur `Windows` + `R`
- Saisis `cmd`
- Appuie sur `Enter`

Dans la fenêtre qui apparaît, saisis :

```bash
wsl --set-default-version 2
```

:heavy_check_mark: Si tu vois apparaître « The operation completed successfully », tu peux fermer ce terminal et suivre les instructions ci-dessous :+1:

:x: Si le message qui s’affiche concerne la virtualisation, **demande au prof**

<details>
 <summary>Activer la fonction Virtual Machine Platform sous Windows</summary>

  Suis les étapes décrites [ici](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in-the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Ensure%20that%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL%202) pour activer <strong>Virtual Machine Platform</strong> et <strong>le sous-système Windows pour Linux</strong>
</details>

<details>
 <summary>Activer la fonction Hyper-V sous Windows</summary>

  Suis les étapes décrites [ici](https://winaero.com/enable-use-hyper-v-windows-10/) pour activer le groupe <strong>Hyper-V</strong>

  :information_source: Si tu as Windows 10 **Home edition**, la fonction Hyper-V n'est pas disponible sur ton système d'exploitation. Ce n'est pas bloquant et tu peux continuer à suivre les instructions ci-dessous :ok_hand:
</details>

</details>
