#Prompt
Import-module posh-git
Import-module oh-my-posh
#Set-PoshPrompt Paradox

#Load prompt config
$omp_config = Join-Path $PSScriptRoot ".\chaitanya.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Clear-Host

#Terminal Icons
Import-Module -Name Terminal-Icons

#PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineOption -PredictionViewStyle ListView
Set-PSReadLineOption -AddToHistoryHandler {
    param($command)
    if ($command -like ' *') {
        return $false
    }
    # Add any other checks you want
    return $true
} 

#Alias
Set-Alias cat bat
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'


#Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function touch ($file) { Write-Output "" >> $file; }
