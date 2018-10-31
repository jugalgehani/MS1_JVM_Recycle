cd C:\Weblogic_12c
Stop_MS1.cmd
powershell ./MS1_JVM_Stop_Notification.ps1
timeout /t 30 /nobreak > NUL
Start_MS1.cmd