## Windows Terminal

As with Ubuntu, click on **Start**, type **Microsoft Store**, and launch it.

In the search bar, type **terminal**, then in the list of results, click on **Windows Terminal (Preview)**.

Install it, and afterwards **reboot** your computer.

After the restart, click on **Start** and type **terminal**. Open **Windows Terminal (Preview)**

This terminal allows you to open multiple terminal tools, including **Powershell**, **Command Prompt**, and **Ubuntu** that you installed earlier :point_up_2: This terminal has tabs. Locate the **down arrow** / v-shape next to the open tab, and click on it. It will show you all the terminals you can open from here, but for the rest of this guide, we will only need **Ubuntu**.


Let's make Ubuntu the default terminal of your Windows terminal application. Press **`Ctrl` + `,`**. It should open the settings:

![wsl2_settings](images/wsl2_settings.jpg)

We have put in red the important parts.
Locate the `"name": "Ubuntu",`.
Add the following line after it (**don't forget the comma at the end**):
```bash
"startingDirectory": "//wsl$/Ubuntu/home/the-session-name-you-chose-at-the-ubuntu-install,
```

Locate the `"guid"` in red, copy the value between `{` and `}`.

Locate the `"defaultProfile"` and replace the value between `{` and `}` with what you copied from above.

Voilà, your **Windows Terminal** :confetti_ball: is setup! From now on, every time we will refer to the terminal/console it will be this one.