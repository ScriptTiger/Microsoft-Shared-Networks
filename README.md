[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/ScriptTiger)

# Microsoft Shared Networks
Need help navigating connection sharing on Microsoft Windows 10 with or without the Creators Update?

This repository is to address issues with sharing a connection on Microsoft Windows 10. Many secure systems on secure networks require tethered connections to a machine with a tightly controlled program of record often serving a database application of some kind. However, upgrading from previous versions of Windows to Windows 10 caused an issue for operators as their workstations could no longer keep a shared connection to their program of record machine after a reboot. A solution to this was using a Hyper-V vSwitch NAT object to NAT traffic from one network to another over an internal virtual switch.

After the Windows 10 Creators Update, the original persistence problem with the standard Internet Connection Sharing service was fixed while at the same time Hyper-V configurations now no longer can run in parallel to other virtualization software, such as VMWare, VirtualBox, etc. This change requires many operators to shift back to the standard Internet Connection Sharing setup so that they can remove Hyper-V from their systems to enable their program of record virtualization environments that are not compatible with Hyper-V. The below scripts address the issues presented both before and after the Windows 10 Creators Update and can be used to easily toggle connection sharing on and off, while not affecting any direct connections to the workstation. These scripts do not change any network adapter settings and all directly connected devices can still be accessed the same from the workstation whether connection sharing is enabled or not. These scripts only affect if and how traffic from one directly connected network accesses another directly connected network through your workstation.

**NOTE: Make sure to read the scripts carefully before running them the first time to make sure they are configured appropriately for your needs. Also, make sure they are run with administrative privileges.**

Before the Windows 10 Creators Update, Internet Connection Sharing could not be persistent across system reboots. An alternative method to keep a shared connection persistent across reboots is to issue a Hyper-V PowerShell command to configure a vSwitch NAT object. For the below script to function properly, Hyper-V must be installed and a vSwitch created.

Without Creators Update:

NAT_On.cmd: Enable a Hyper-V vSwitch NAT object to NAT traffic for a specific connected network

NAT_Off.cmd: Remove a Hyper-V vSwitch NAT object

After the Windows 10 Creators Update, you can now keep the standard Internet Connection Sharing configuration persistent across reboots. The Windows 10 Creators Update must be installed for the below script to function properly.

With Creators Update:

ICS_On.cmd: Enable Internet Connection Sharing to be persistent

ICS_Off.cmd: Stop and disable Internet Connection Sharing service

You can download this repo from the below link to get started:  
https://github.com/ScriptTiger/Microsoft-Shared-Networks/archive/master.zip

For more ScriptTiger scripts and goodies, check out ScriptTiger's GitHub Pages website:  
https://scripttiger.github.io/

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MZ4FH4G5XHGZ4)

Donate Monero (XMR): 441LBeQpcSbC1kgangHYkW8Tzo8cunWvtVK4M6QYMcAjdkMmfwe8XzDJr1c4kbLLn3NuZKxzpLTVsgFd7Jh28qipR5rXAjx
