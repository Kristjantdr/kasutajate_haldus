$firstName = Read-Host "Sisesta oma eesnimi"
$lastName = Read-Host "Sisesta oma perenimi"


$username = $firstname.ToLower() + "." + $lastname.ToLower()

Write-Host 'Kustutatav kasutaja on:' $username


try {
    
    Remove-LocalUser -Name $username -ErrorAction Stop
    
    
    Write-Host "Kasutaja $username on edukalt kustutatud."
} catch {
    
    Write-Host "Tekkinud probleem $username kustutamisega. Veateade: $_"
}
