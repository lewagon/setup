## Versão do Windows

Antes de começarmos, precisamos verificar se a versão do Windows instalada no seu computador é compatível com estas instruções de configuração.

### Windows 10 ou Windows 11

> :warning: **Nota sobre o Windows 10 e segurança**
>
> O setup do bootcamp Le Wagon funciona no Windows 10. Dito isso, recomendamos fortemente a atualização para o Windows 11. A partir de 14 de outubro de 2025, a Microsoft encerrou o suporte ao Windows 10, o que significa que ele não receberá mais atualizações de segurança, potencialmente deixando sua máquina em risco. Para mais detalhes, leia o guia da Microsoft: https://support.microsoft.com/en-us/windows/windows-10-support-has-ended-on-october-14-2025-2ca8b313-1946-43d3-b55c-2b95b107f281. Caso sua máquina não consiga executar o Windows 11, considere mudar para o Ubuntu.

Para poder configurar seu computador, você precisa ter o **Windows 10 ou Windows 11** instalado.

Para verificar sua versão do Windows:
- Pressione `Windows` + `R`
- Digite `winver`
- Pressione `Enter`

:heavy_check_mark: Se as primeiras palavras desta janela forem **Windows 11** você está pronto para prosseguir :+1:

- :heavy_check_mark: Se as primeiras palavras desta janela forem **Windows 10**, verifique o **Número da versão**::

- :x: Caso contrário, você não poderá prosseguir com esta configuração. Você precisa atualizar.

- <details>
  <summary>Como instalar as últimas atualizações?</summary>

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


  Verifique o Número da versão:

  - Pressione `Windows` + `R`
  - Digite `winver`
  - Pressione `Enter`


  :heavy_check_mark: Se disser pelo menos `2004`, você está pronto :+1:

  :x: Se estiver abaixo de `22004`, por favor **entre em contato com um professor**.

  </details>
