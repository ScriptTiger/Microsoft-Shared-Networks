@echo off

rem =====
rem For more information on ScriptTiger and more ScriptTiger scripts visit the following URL:
rem https://scripttiger.github.io/
rem Or visit the following URL for the latest information on this ScriptTiger script:
rem https://github.com/ScriptTiger/Microsoft-Shared-Networks
rem =====

reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedAccess /v EnableRebootPersistConnection /t REG_DWORD /d 1 /f
sc config SharedAccess start=auto
net start SharedAccess