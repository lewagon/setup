## Subsistema Windows para Linux (WSL)

WSL é o ambiente de desenvolvimento que usamos para executar o Ubuntu. Você pode aprender mais sobre WSL [aqui](https://docs.microsoft.com/en-us/windows/wsl/faq).

:information_source: As instruções a seguir dependem da sua versão do Windows. Por favor, execute apenas as instruções correspondentes à sua versão :point_down:

### Windows 11

Se você estiver executando o Windows 11, instalaremos o WSL 2 e o Ubuntu em um comando através do Terminal do Windows.

:warning: Nas instruções a seguir, esteja ciente do pressionamento de tecla `Ctrl` + `Shift` + `Enter` para executar o **Terminal Windows** com privilégios de administrador em vez de apenas clicar em `Ok` ou pressionar `Enter` .

- Pressione `Windows` + `R`
- Digite `wt`
- Pressione **`Ctrl` + `Shift` + `Enter`**

:warning: Você pode ter que aceitar a confirmação do UAC sobre a elevação de privilégio.

Uma janela de terminal azul aparecerá:
- Copie o seguinte comando (`Ctrl` + `C`)
- Cole-o na janela do terminal (`Ctrl` + `V` ou clicando com o botão direito na janela)
- Execute-o pressionando `Enter`

```powershell
wsl --install
```

:heavy_check_mark: Se o comando foi executado sem nenhum erro, reinicie o computador e continue abaixo:+1:

:x: Se você encontrar uma mensagem de erro (ou se vir algum texto em vermelho na janela), por favor **entre em contato com um professor**

### Windows 10

#### Instale o WSL 1

Se você estiver executando o Windows 10, primeiro instalaremos o WSL 1 por meio do Terminal PowerShell.

:warning: Nas instruções a seguir, esteja ciente do pressionamento de tecla `Ctrl` + `Shift` + `Enter` para executar o **Windows PowerShell** com privilégios de administrador em vez de apenas clicar em `Ok` ou pressionar `Enter` .

- Pressione `Windows` + `R`
- Digite `powershell`
- Pressione **`Ctrl` + `Shift` + `Enter`**

:warning: Você pode ter que aceitar a confirmação do UAC sobre a elevação de privilégio.

Uma janela de terminal azul aparecerá:
- Copie os seguintes comandos um por um (`Ctrl` + `C`)
- Cole-os na janela do PowerShell (`Ctrl` + `V` ou clicando com o botão direito na janela)
- Execute-os pressionando `Enter`

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

:heavy_check_mark: Se todos os três comandos foram executados sem nenhum erro, reinicie o computador e continue abaixo:+1:

:x: Se você encontrar uma mensagem de erro (ou se vir algum texto em vermelho na janela), por favor **entre em contato com um professor**

#### Atualizar para WSL 2

Se você estiver executando o Windows 10, atualizaremos o WSL para a versão 2.

Assim que o computador for reiniciado, precisamos baixar o instalador WSL2.

- Vá para a [página de download](https://aka.ms/wsl2kernel)
- Baixe o "pacote de atualização do kernel WSL2 Linux"
- Abra o arquivo que você acabou de baixar
- Clique em `Avançar`
- Clique em `Concluir`

![Atualize WSL da versão 1 para 2](images/windows_update_wsl.png)

:heavy_check_mark: Se não encontrou nenhuma mensagem de erro, você está pronto: +1:

:x: Se você encontrar o erro "Esta atualização se aplica apenas a máquinas com o subsistema Windows para Linux", **clique com o botão direito** no programa e selecione `uninstall`; você poderá instalá-lo normalmente desta vez.

#### Torne o WSL 2 o subsistema Windows padrão para Linux

Se você estiver executando o Windows 10, definiremos a versão padrão do WSL como 2.

Agora que o WSL 2 está instalado, vamos torná-lo a versão padrão:
- Pressione `Windows` + `R`
- Digite `cmd`
- Pressione `Enter`

Na janela que aparece, digite:

```bash
wsl --set-default-version 2
```

:heavy_check_mark: Se você vir "A operação foi concluída com sucesso", você pode fechar este terminal e continuar seguindo as instruções abaixo:+1:

:x: Se a mensagem que você receber for sobre Virtualização, por favor **entre em contato com um professor**

<details>
   <summary>Ativar recurso Windows da Plataforma de Máquina Virtual</summary>

   Siga as etapas descritas [aqui](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in- the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Garanta%20que%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL %202) até você ativar a <strong>Plataforma de Máquina Virtual</strong> e o <strong>Subsistema Windows para Linux</strong>
</details>

<details>
   <summary>Ativar recurso Hyper-V do Windows</summary>

   Siga as etapas descritas [aqui](https://winaero.com/enable-use-hyper-v-windows-10/) até ativar o grupo <strong>Hyper-V</strong>

   :information_source: Se você estiver executando o Windows 10 **Home edition**, o recurso Hyper-V não estará disponível para o seu sistema operacional. Não bloqueia e você ainda pode continuar seguindo as instruções abaixo: ok_hand:
</details>
