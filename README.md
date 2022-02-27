# .dotfile
My dotfiles.


Initial setup:

```winget install --id Microsoft.PowerShell```  // Install latest Powershell

```Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser```

```New-Item -path $profile -type file –Force```  // Create powershell profile with path "Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
