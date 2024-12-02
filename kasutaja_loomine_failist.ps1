$Fail = "C:\Users\Kristjan\kasutajate_haldus\kasutajad.csv"
$Kasutajad = Import-Csv $Fail -Encoding Default -Delimiter ";"
foreach ($kasutaja in $kasutajad)
{
$Kasutajanimi = $kasutaja.Kasutajanimi
$Taisnimi = $kasutaja.Taisnimi
$KontoKirjeldus = $kasutaja.KontoKirjeldus
$Parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force
New-LocalUser -Name $Kasutajanimi -Password $Parool -FullName "$Taisnimi" -Description "$KontoKirjeldus"
}