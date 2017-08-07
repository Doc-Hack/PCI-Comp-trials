@echo off
start powershell.exe C:\PCIComplianceScript.ps1
start C:\DisableInactiveADAccounts.exe
at 12:00 /EVERY:su C:\DiasbleInactiveADAccounts.exe