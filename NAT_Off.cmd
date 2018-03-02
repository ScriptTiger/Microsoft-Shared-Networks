@echo off

rem =====
rem For more information on ScriptTiger and more ScriptTiger scripts visit the following URL:
rem https://scripttiger.github.io/
rem Or visit the following URL for the latest information on this ScriptTiger script:
rem https://github.com/ScriptTiger/Microsoft-Shared-Networks
rem =====

rem Path to PowerShell
set PS=%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe

rem Name of NAT object
set NAT=Internal

rem Command to remove the NAT object for the internal network
%PS% remove-netnat %NAT%
