## Ubuntu

### Instalação

:information_source: As instruções a seguir dependem da sua versão do Windows. Por favor, execute apenas as instruções correspondentes à sua versão :point_down:

#### Windows 11

Se você estiver executando o Windows 11, após reiniciar o computador, você deverá ver uma janela de terminal informando que o WSL está retomando o processo de instalação do Ubuntu. Quando terminar, o Ubuntu será lançado.

#### Windows 10

Se você estiver executando o Windows 10, vamos instalar o Ubuntu através da Microsoft Store:

- Clique em `Iniciar`
- Digite `Microsoft Store`
- Clique em `Microsoft Store` na lista
- Procure por `Ubuntu` na barra de pesquisa
- **Selecione a versão sem nenhum número, simplesmente "Ubuntu"**
- Clique em `Obter`

:warning: Não instale **Ubuntu 18.04 LTS** nem **Ubuntu 20.04**!

<details>
   <summary>Desinstale versões erradas do Ubuntu</summary>

   Para desinstalar uma versão errada do Ubuntu, basta ir até a Lista de Programas Instalados do Windows 10:
   - Pressione `Windows` + `R`
   - Digite `ms-settings:appsfeatures`
   - Pressione `Enter`

   Encontre o software para desinstalar e clique no botão desinstalar.
</details>

Assim que a instalação for concluída, o botão `Get` se torna um botão `Open`: clique nele.

### Executando pela primeira vez

Na primeira execução, serão solicitadas algumas informações:
- Escolha um nome de **usuário**:
     - uma palavra
     - minúsculas
     - sem caracteres especiais
     - por exemplo: `lewagon` ou seu `nome`
- Escolha uma **senha**
- Confirme sua senha

:warning: Quando você digita sua senha, nada aparecerá na tela, **isso é normal**. Este é um recurso de segurança para mascarar não apenas sua senha como um todo, mas também seu comprimento. Basta digitar sua senha e quando terminar, pressione `Enter`.

Você pode fechar a janela do Ubuntu agora que ele está instalado no seu computador.

### Verifique a versão WSL do Ubuntu

- Pressione `Windows` + `R`
- Digite `cmd`
- Pressione `Enter`

Digite o seguinte comando:

```bash
wsl -l -v
```

:heavy_check_mark: Se a versão do Ubuntu WSL for 2, você está pronto :+1:

:x: Se a versão do Ubuntu WSL for 1, precisaremos convertê-lo para a versão 2.

<details>
   <summary>Converter Ubuntu WSL V1 em V2</summary>

   Na janela do prompt de comando, digite:

  ```bash
  wsl --set-version Ubuntu 2
  ```

   :heavy_check_mark: Após alguns segundos, você deverá receber a seguinte mensagem: `A conversão foi concluída`.

   :x: Se não funcionar, precisamos ter certeza de que os arquivos do Ubuntu não estão compactados.
</details>

<details>
   <summary>Verificar arquivos descompactados</summary>

   - Pressione `Windows` + `R`
   - Digite `%localappdata%\Packages`
   - Pressione `Enter`
   - Abra a pasta chamada `CanonicalGroupLimited.UbuntuonWindows...`
   - Clique com o botão direito na pasta `LocalState`
   - Clique em `Propriedades`
   - Clique em `Avançado`
   - Certifique-se de que a opção `Compactar conteúdo` **não** esteja marcada e clique em `Ok`.

   Aplique as alterações apenas nesta pasta e tente converter a versão WSL do Ubuntu novamente.

   :x: Se a conversão ainda não funcionar, por favor **entre em contato com um professor**.
</details>

### Verifique a localidade

A localidade é um mecanismo que permite personalizar programas de acordo com seu idioma e país.

Vamos verificar se a localidade padrão está definida como inglês, digite isto no terminal do Ubuntu:

```bash
locale
```

Se a saída não contiver `LANG=en_US.UTF-8`, execute o seguinte comando em um terminal Ubuntu para instalar a localidade em inglês:

```bash
sudo locale-gen en_US.UTF-8
```

Se, depois, receberes um aviso (`bash: warning: setlocale: LC_ALL: cannot change locale (en_US.utf-8)`) no teu terminal, por favor faz o seguinte:

<details>
  <summary>Gerar localidade</summary>

Por favor, executa estas linhas no teu terminal.

```bash
sudo update-locale LANG=en_US.UTF8
sudo apt-get update
sudo apt-get install language-pack-en language-pack-en-base manpages
```
</details>

Agora você pode fechar esta janela do terminal.
