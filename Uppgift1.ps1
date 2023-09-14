
$ip = @("192.168.0.")

for($i = 1; $i -lt 256; $i++){
    write-output "$ip$i"
}
