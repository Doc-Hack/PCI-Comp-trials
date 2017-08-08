function RegistryCheckCreate ($registryPath, $Name, $value)
  { IF(!(Test-Path $registryPath))

    {

        New-Item -Path $registryPath -Force | Out-Null

        New-ItemProperty -Path $registryPath -Name $name -Value $value `

        -PropertyType DWORD -Force | Out-Null}

    ELSE {

        New-ItemProperty -Path $registryPath -Name $name -Value $value `

        -PropertyType DWORD -Force | Out-Null}}

RegistryCheckCreate "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\Terminal Services" MaxDisconnectionTime 0000EA60
RegistryCheckCreate "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\Terminal Services" MaxIdleTime 000DBBA0
RegistryCheckCreate "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" ScreenSaverGracePeriod 00000000
