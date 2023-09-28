[int]$age = Read-Host("What's your age?")

if($age -gt 16) {
    Write-Output "You are older than me"

}
elseif($age -lt 16) {
    Write-Output "You are younger than me"

}
else {
    Write-Output "We are the same age"
}