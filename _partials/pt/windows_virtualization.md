## Virtualização

Precisamos garantir que as opções de virtualização estejam habilitadas no BIOS do seu computador.

Para muitos computadores, este já é o caso. Vamos checar:
- Pressione `Windows` + `R`
- Digite `taskmgr`
- Pressione `Enter`
- Clique na aba `Desempenho`
- Clique em `CPU`

![Gerenciador de tarefas do Windows](images/windows_task_manager.png)

:heavy_check_mark: Se você vir "Virtualização: Ativada", está pronto: +1:

:x: Se a linha estiver faltando ou se a virtualização estiver desabilitada, por favor **entre em contato com um professor antes de tentar ativar a Virtualização**

<details>
   <summary>Ativar virtualização</summary>

   Precisamos acessar o BIOS/UEFI do computador para ativá-lo.
   - Pressione `Windows + R`
   - Digite `shutdown.exe /r /o /t 1`
   - Pressione `Enter`
   - Aguarde o computador desligar
   - Clique em `Solucionar problemas`
   - Clique em `Opções avançadas`
   - Clique em `Configurações de firmware UEFI`
   - Clique em `Reiniciar`

   Você precisa ativar a opção de virtualização para o seu processador aqui:
   - Na maioria das vezes, nas configurações avançadas, nas configurações da CPU ou nas configurações do Northbridge
   - A opção pode ter um nome diferente de acordo com o seu computador:
       - Intel: `Intel VT-x`, `Tecnologia de virtualização Intel`, `Extensões de virtualização`, `Vanderpool`...
       - AMD: `Modo SVM` ou `AMD-V`
   - Salve as alterações após a ativação e reinicie o computador através da opção apropriada
</details>
