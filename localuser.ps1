$person = Read-Host("Sök användare")
$users = Get-LocalUser *$person*

foreach ($user in $users) {
    Write-Host $user.Name $user.Description

}