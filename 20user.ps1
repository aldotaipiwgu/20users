# Set the number of computer accounts to create
$numberOfComputers = 10

# Set the OU where the computer accounts will be created
$ouPath = "OU=Computers,DC=example,DC=com"

# Loop through and create the computer accounts
for ($i = 1; $i -le $numberOfComputers; $i++) {
    $computerName = "COMPUTER$i"
    $description = "Test computer $i"
    
    # Create the new computer account
    New-ADComputer `
        -Name $computerName `
        -Description $description `
        -Enabled $true `
        -Path $ouPath
}
