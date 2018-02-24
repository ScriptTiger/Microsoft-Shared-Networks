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

rem Internal network requiring NAT object
rem Make sure your adapter's IP settings are configured appropriately
rem The default Internet Connection Sharing adapter IP is 192.168.137.1/24
rem The default network used by Internet Connection Sharing is 192.168.137.0/24
set NET=192.168.137.0/24

rem Command to enable the NAT object for the internal network
%PS% new-netnat %NAT% -InternalIPInterfaceAddressPrefix %NET%