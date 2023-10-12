$names = Import-Csv names.csv

foreach($name in $names) {
    Write-Host $name.firstname  $name.lastname 
    $start = $name.firstname.Substring(0,2)
    $end = $name.lastname.Substring(0,2)
    Write-Host $start$end
}