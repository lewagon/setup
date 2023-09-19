## Vinculando seu navegador padrão ao Ubuntu

Para ter certeza de que você pode interagir com seu navegador instalado no Windows a partir do terminal Ubuntu, precisamos defini-lo como navegador padrão.

:warning: Você precisa executar pelo menos um dos seguintes comandos abaixo:

<details>
   <summary>Google Chrome como navegador padrão</summary>

   Execute o comando:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

   Você recebeu um erro como `ls: não é possível acessar...`?

<details>
   <summary>Sim, ocorreu um erro</summary>

Execute os seguintes comandos:

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'\"" >> ~/.zshrc
  ```
</details>

<details>
   <summary>Não, estava tudo bem</summary>

   Execute os seguintes comandos:

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe'\"" >> ~/.zshrc
  ```
</details>

---

</details>

<details>
   <summary>Mozilla Firefox como seu navegador padrão</summary>

   Execute o comando:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

   Você recebeu um erro como `ls: não é possível acessar...`?

<details>
   <summary>Sim, ocorreu um erro</summary>

   Execute os seguintes comandos:

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files/Mozilla Firefox/firefox.exe'\"" >> ~/.zshrc
  ```

</details>

<details>
   <summary>Não, estava tudo bem</summary>

   Execute os seguintes comandos:

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe'\"" >> ~/.zshrc
  ```
</details>

---

</details>

<details>
   <summary>Microsoft Edge como navegador padrão</summary>

   Execute os comandos:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe\"'" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe'\"" >> ~/.zshrc
  ```

---

</details>

Reinicie seu terminal.

Em seguida, certifique-se de que o seguinte comando retorne "Browser Defined 👌":

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

Se isso não acontecer,

:heavy_check_mark: Se você recebeu esta mensagem, pode continuar :+1:

:x: Caso contrário, escolha um navegador na lista acima e execute o comando correspondente. Então não se esqueça de redefinir seu terminal:

```bash
exec zsh
```

Não hesite em **entrar em contato com um professor**.
