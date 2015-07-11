@echo off

:: Created by: Shawn Brink
:: http://www.eightforums.com
:: Tutorial:  http://www.eightforums.com/tutorials/6320-fast-startup-turn-off-windows-8-a.html


:: To turn off Fast Startup
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /V HiberbootEnabled /T REG_dWORD /D 0 /F



