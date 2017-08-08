Import-Module activeDirectory

Search-ADAccount -AccountInactive -TimeSpan (New-TimeSpan -Days 90) |

    ForEach {Set-ADUser -Identity $_.samaccountname.replace('$','') -enabled 0 -Replace @{Description = $_.Description + " *** Disabled as stale " + (Get-Date -Format g)} ; Set-ADComputer -Identity $_.samaccountname.replace('$','') -enabled 0 -Replace @{Description = $_.Description + " *** Disabled as stale " + (Get-Date -Format g)}}