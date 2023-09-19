## Versão do Windows

Antes de começarmos, precisamos verificar se a versão do Windows instalada no seu computador é compatível com estas instruções de configuração.

### Windows 10 ou Windows 11

Para poder configurar seu computador, você precisa ter o **Windows 10 ou Windows 11** instalado.

Para verificar sua versão do Windows:
- Pressione `Windows` + `R`
- Digite `winver`
- Pressione `Enter`

:heavy_check_mark: Se as primeiras palavras desta janela forem **Windows 10 ou Windows 11** você está pronto para prosseguir :+1:

:x: Caso contrário, você não poderá prosseguir com esta configuração. Você precisa atualizar para o Windows 10 primeiro: point_down:

<details>
   <summary>Atualizar para o Windows 10</summary>

   - Baixe o Windows 10 da [Microsoft](https://www.microsoft.com/software-download/windows10ISO)
   - Instale-o. Deve demorar cerca de uma hora, mas isso depende do seu computador.
   - Quando a instalação terminar, execute os comandos acima :point_up: para verificar se você agora tem o **Windows 10**.
</details>

:information_source: [A atualização do Windows 11 está sendo lançada agora](https://www.microsoft.com/en-us/windows/get-windows-11), o que significa que ela pode ou não estar disponível para o seu computador ainda .

:warning: **Se você tiver o Windows 10 instalado, não será necessário atualizar para o Windows 11 para prosseguir com esta configuração**.

### Ultimas atualizações

Quando tiver certeza de que está usando o Windows 10 ou 11, você precisará instalar todas as atualizações mais recentes.

Abra a atualização do Windows:
- Pressione `Windows` + `R`
- Digite `ms-settings:windowsupdate`
- Pressione `Enter`
- Clique em `Verificar atualizações`

:heavy_check_mark: Se você vir uma marca de seleção verde e a mensagem "Você está atualizado", você está pronto para prosseguir :+1:

:warning: Se você tiver um ponto de exclamação vermelho e a mensagem "Atualização disponível", instale-os e repita o processo até que apareça que você está atualizado :loop:

:x: Se você receber uma mensagem de erro sobre o Windows não conseguir aplicar atualizações, **entre em contato com um professor**.

<details>
   <summary>Ative o Windows Update Service para corrigir atualizações</summary>

   Alguns antivírus e softwares desativam o serviço de atualização de que precisamos, resultando no erro que você vê. Vamos consertar isso!
   - Pressione `Windows` + `R`
   - Digite `services.msc`
   - Pressione `Enter`
   - Clique duas vezes em `Serviço de atualização do Windows`
   - Defina sua `Inicialização` para `Automático`
   - Clique em `Iniciar`
   - Clique em `Ok`
   Então vamos tentar as atualizações novamente!
</details>

### Versão mínima

Algumas das ferramentas que precisamos instalar foram lançadas com a versão `1903` **ou superior** do Windows 10, então precisamos ter certeza de que você tem pelo menos esta.

- Pressione `Windows` + `R`
- Digite `winver`
- Pressione `Enter`

Verifique o **Número da versão**:

:heavy_check_mark: Se disser pelo menos `1903`, você está pronto :+1:

:x: Se estiver abaixo de `1903`, por favor **entre em contato com um professor**.
