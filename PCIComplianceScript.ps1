Import-module activedirectory
Set-ADDefaultDomainPasswordPolicy -Identity $env:USERDOMAIN -ComplexityEnabled 1 -LockoutDuration 0.00:30:00 -LockoutObservationWindow 2 -LockoutThreshold 6 -MaxPasswordAge 90.0:0:0.0 -MinPasswordLength 7 -PasswordHistoryCount 4
import-module grouppolicy
Set-GPRegistryValue -Name "Default Domain Policy" -key "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" -ValueName ScreenSaveTimeOut -Type DWORD -value 900
Set-GPRegistryValue -Name "Default Domain Policy" -key "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -ValueName ScreenSaverGracePeriod -Type DWORD -value 0
Set-GPRegistryValue -Name "Default Domain Policy" -key "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Terminal Services" -ValueName MaxIdleTime -Type DWORD -value 900000
Set-GPRegistryValue -Name "Default Domain Policy" -key "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Terminal Services" -ValueName MaxDisconnectionTime -Type DWORD -value 60000