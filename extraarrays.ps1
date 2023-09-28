$array = "Apple-banana", "Orange-banana", "Kiwi-banana", "Pear-banana"

Write-Host $array

$array = $array -replace "banana", "orange"

Write-Host $array