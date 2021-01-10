### Virtualization

We need to ensure that the Virtualization options are enabled in the BIOS of your computer.

For many computers, this is already the case. Let's check:


>\- Press `Windows` + `R`
>\- Type  `taskmgr`
>\- Press `Enter`
>
>
>\- Click on the `Performance` tab
>\- Click on `CPU`


![task_manager.jpg](images/task_manager.jpg)

&nbsp;

&nbsp;&nbsp;&nbsp; :x: If the line is missing or if it is disabled, please **contact a teacher before trying to activate the Virtualization**.

&nbsp;&nbsp;&nbsp; :white_check_mark: The status will be listed under the graph and will say "Virtualization: Enabled" if this tool is enabled.


---

#### :wrench: Potential Fixes

<details>
  <summary>Activate Virtualization</summary>

  &nbsp;


  We need to access the BIOS / UEFI of the computer to activate it.


  >\- Press `Windows + R`
  >\- Type  `shutdown.exe /r /o /t 1`
  >\- Press `Enter`
  >
  >
  >\- Wait for the computer to shutdown
  >
  >
  >\- Click on `Troubleshoot`
  >\- Click on `Advanced Options`
  >\- Click on `UEFI Firmware Settings`
  >\- Click on `Restart`


  You need to activate the virtualization option for your processor here:
  - Most of the time, in the advanced settings, the CPU settings, or the Northbridge settings
  - The option can be called differently according to your computer:
      - Intel: `Intel VT-x`, `Intel Virtualization Technology`, `Virtualization Extensions`, `Vanderpool`...
      - AMD: `SVM Mode` or `AMD-V`
  - Save the changes after activation and reboot the computer through the appropriate option
</details>

---

