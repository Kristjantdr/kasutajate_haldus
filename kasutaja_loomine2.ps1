if($args.Count -ne 3 ){
echo '.\Skripti nimi kasutajanimi "Ees Perenimi" "Konto kirjeldus"'
} else {

$Kasutajanimi = $args[0]
$Taisnimi = $args[1]
$Kontokirjeldus = $args[2]
)
$KasutajaParool - ConvertTo-SecureString "qwerty" -AsPlainText -Force
New-LocalUser "$Kasutajanimi" -Password $KasutajaParool -FullName "$Taisnimi" -Description "$KontoKirjeldus"
}