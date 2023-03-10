# Set the number of user accounts to create
$numberOfUsers = 20

# Set the default password for the new user accounts
$password = "P@ssw0rd"

# Set the OU where the user accounts will be created
$ouPath = "OU=Users,DC=example,DC=com"

# Loop through and create the user accounts
for ($i = 1; $i -le $numberOfUsers; $i++) {
    $firstName = "User$i"
    $lastName = "Last$i"
    $samAccountName = "user$i"
    $displayName = "$firstName $lastName"
    $userPrincipalName = "$samAccountName@example.com"
    $emailAddress = "$samAccountName@example.com"
    
    # Create the new user account
    New-ADUser `
        -SamAccountName $samAccountName `
        -UserPrincipalName $userPrincipalName `
        -Name $displayName `
        -GivenName $firstName `
        -Surname $lastName `
        -EmailAddress $emailAddress `
        -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) `
        -Enabled $true `
        -Path $ouPath
}
