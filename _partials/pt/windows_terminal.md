## Terminal do Windows

### Instalação

:information_source: As instruções a seguir dependem da sua versão do Windows.

Se você estiver executando o Windows 11, o Terminal do Windows já está instalado e você pode prosseguir para a próxima seção :point_down:

Se você estiver executando o Windows 10, vamos instalar o Windows Terminal, um terminal realmente moderno.

<details>
<summary><strong>Windows 10</strong>: Instalar Windows Terminal</summary>

- Clique em `Iniciar`
- Digite `Microsoft Store`
- Clique em `Microsoft Store` na lista
- Procure por `Windows Terminal` na barra de pesquisa
- **Selecione Terminal do Windows"**
- Clique em `Instalar`

:warning: NÃO instale o **Windows Terminal Preview**, apenas o **Windows Terminal**!

<details>
   <summary>Desinstale a versão errada do Terminal do Windows</summary>

   Para desinstalar uma versão errada do Terminal Windows, basta ir até a Lista de Programas Instalados do Windows 10:

   - Pressione `Windows` + `R`
   - Digite `ms-settings:appsfeatures`
   - Pressione `Enter`

   Encontre o software para desinstalar e clique no botão desinstalar.
</details>

Assim que a instalação for concluída, o botão `Instalar` se torna um botão `Iniciar`: clique nele.

</details>

### Ubuntu como terminal padrão

Vamos tornar o Ubuntu o terminal padrão do seu aplicativo Windows Terminal.

Pressione `Ctrl` + `,`

Deve abrir as configurações do terminal:

![Configurações do Terminal do Windows](images/windows_terminal_settings.png)

- Altere o perfil padrão para "Ubuntu"
- Clique em "Salvar"
- Clique em "Abrir arquivo JSON"

Você pode ver um círculo laranja em vez de um pinguim como logotipo do Ubuntu.

Temos um círculo em vermelho na parte que você irá alterar:

![Arquivo de configurações JSON do Terminal do Windows](images/windows_terminal_settings_json.png)

Primeiro, vamos pedir ao Ubuntu para iniciar diretamente dentro do diretório inicial do Ubuntu, em vez do diretório do Windows:
- Localize a entrada com `"name": "Ubuntu",` e `"hidden": false,`
- Adicione a seguinte linha depois dela:

```bash
"commandline": "wsl.exe ~",
```

:warning: Não esqueça a vírgula no final da linha!

Então, vamos desabilitar o aviso para comandos de copiar e colar entre o Windows e o Ubuntu:
- Localize a linha `"defaultProfile": "{2c4de342-...}"`
- Adicione a seguinte linha depois dela:

```bash
"multiLinePasteWarning": false,
```

:warning: Não esqueça a vírgula no final da linha!

Você pode salvar essas alterações pressionando `Ctrl` + `S`

:heavy_check_mark: Seu **Terminal Windows** agora está configurado :+1:

Este terminal possui abas: você pode optar por abrir uma nova aba do terminal clicando em **+** ao lado da atual.

**De agora em diante, toda vez que nos referirmos ao terminal ou ao console será este.** NÃO utilize mais nenhum outro terminal.
