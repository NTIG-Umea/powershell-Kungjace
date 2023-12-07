$users = Import-Csv GroupNames.csv | select *, username


foreach($user in $users) {
    $user.username = $user.firstname + "." + $user.lastname + "." + "NTI"

}

Write-Output "New-ADUser -Name "$user.username" -Path "OU=LightSeaGreen,DC=colors,DC=labb""