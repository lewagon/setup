## Linking your default browser to Ubuntu
To be sure that you can interact with your browser installed on Windows from your new Ubuntu terminal, we need to set it as your default browser there.


<details>
  <summary>Google Chrome as your default browser</summary>

  &nbsp;
  
  
  Run the command:


  ```bash
  echo "export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe" >> ~/.zshrc
  ```
</details>


<details>
  <summary>Mozilla Firefox as your default browser</summary>

  &nbsp;
  
  
  Run the command:


  ```bash
  echo "export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe" >> ~/.zshrc
  ```
</details>


Restart your terminal.
