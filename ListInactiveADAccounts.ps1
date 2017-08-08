Import-Module activeDirectory
Get-ADUser -Filter * -Properties "LastLogonDate" | sort-object -property lastlogondate -descending | Format-Table -property name, lastlogondate -AutoSize