$firstname = Read-Host 'Enter your firstname'
$lastname = Read-Host 'Enter your lastname'

$username = $firstname.ToLower() + "." + $lastname.ToLower()
$userPassword = ConvertTo-SecureString 'qwerty' -AsPlainText -Force
$fullname = $firstname + " " + $lastname
$description = "Local account"

Write-Host 'Try to create user ' $username
$userExists = Get-LocalUser $username -ErrorAction SilentlyContinue

if(($userExists | Select Name).Name.Count -ge 1){
    Write-Host 'Problem to create user - user already exists'
    Exit
    } else {
    New-LocalUser $username -Password $userPassword -FullName $fullname -Description $description
    }