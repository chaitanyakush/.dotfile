iwr -useb get.scoop.sh | iex
scoop install curl sed jq wget bat git
mkdir $env:USERPROFILE/.config/powershell
cp user_profile.ps1 $env:USERPROFILE/.config/powershell/
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
cp chaitanya.omp.json $env:USERPROFILE/.config/powershell/
echo '. $env:USERPROFILE\.config\powershell\user_profile.ps1' > $PROFILE.CurrentUserCurrentHost
Install-Module Terminal-Icons -Scope CurrentUser -Repository PSGallery -Force
Install-Module -Name z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
