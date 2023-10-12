$users = Import-Csv userlist.csv | select *,username,mail,password
$characters = "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "!", "@", "#", "£", "¤", "$", "%", "&", "/", "{", "(", "[", ")", "]", "=", "}", "?", "+", "\"
$password = ""

$randomnum = Get-Random -max 26
$password += $characters[$randomnum]

$randomnum = Get-Random -min 27 -max 52
$password += $characters[$randomnum]

$randomnum = Get-Random -min 53 -max 62
$password += $characters[$randomnum]

$randomnum = Get-Random -min 63 -max 81
$password += $characters[$randomnum]





foreach($user in $users) {
    $user.username = $user.firstname + "." + $user.lastname
    $user.mail = $user.firstname + "." + $user.lastname + "@gmail.com"
    $password= ""
    for ($i = 0; $i -lt 10; $i++){
        $randomnum = Get-Random -max $characters.Length
        $password += $characters[$randomnum]
    }
    $user.password = $password



}
$users