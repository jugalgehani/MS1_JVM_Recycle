powershell ./MS1_JVM_Stop_Notification.ps1
cd C:\Weblogic_12c
set BUILD_ID=doNotKill
start /B C:\Oracle\Middleware\Oracle_Home\user_projects\domains\wl_server\bin\startManagedWebLogic.cmd MS1
timeout /t 60 /nobreak > NUL
cd C:\Oracle\Middleware\Oracle_Home\user_projects\domains\wl_server\servers\MS1\logs
findstr "RUNNING" MS1.log
cd C:\Weblogic_12c
powershell ./MS1_JVM_Start_Notification.ps1
timeout /t 120 /nobreak > NUL
EXIT 0