<#
    .SYNOPSIS
    Update-Repository.ps1 is a script that updates the repository of the current branch.

    .DESCRIPTION
    Update-Repository.ps1 is a simple script that updates the Vincent OS repository, pushing the changes to GitHub.
    It does not the following jobs:
    - Build Packages
    - Push to the Vincent OS repository production server.
#>

# Check if there is any generated junks in the folders according to the .gitignore file.
$generatedJunks = Get-Content .gitignore
$generatedJunks = $generatedJunks | Where-Object { $_ -notmatch '^#' }

if ($generatedJunks.Count -eq 0) {
    Write-Host "No generated junks found. Continuing..."
}
else {
    foreach ($_ in $generatedJunks) {
        Write-Host "Removing $_"
        Remove-Item -Path $_ -Force -Recurse
    }
}

# Git add, commit and push the changes.
git add .
git commit -m "[REPO] Update repository"
git push