# Modulos
# Install-Module posh-git -Scope CurrentUser -Force
# Install-Module oh-my-posh -Scope CurrentUser -Force
# Install-Module -Name Terminal-Icons -Repository PSGallery -Force
# Install-Module -Name z -Force
# Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# Install-Module -Name PSFzf -Scope CurrentUser -Force

# Copiar la confuguracion de windows terminal
# cp $HOME\.config\powershell\terminal\settings.json $HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

# Los el archivo de configuracion de powershell
mkdir $HOME\Documents\PowerShell
New-Item $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
Write-Output '. $env:USERPROFILE\.config\powershell\pwsh_config.ps1' > $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

# Instalacion de modulos de powershell
Install-Module posh-git -Scope CurrentUser -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name PSFzf -Scope CurrentUser -Force

# Instalacion de manejadores de versiones
# Jabba
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-Expression (
  Invoke-WebRequest https://github.com/shyiko/jabba/raw/master/install.ps1 -UseBasicParsing
).Content
# NVM
choco install nvm -y
# PyENV
choco install pyenv-win -y

# Configuracion de Git 
New-Item -ItemType SymbolicLink -Path $HOME\.gitconfig -Value $HOME\.config\.gitconfig
# Configuracion de Nombre y Correo para git
Write-Output "Ingrese nombre para git: " 
$name = Read-Host
git config --system user.name $name

Write-Output "Ingrese email para git: " 
$email = Read-Host
git config --system user.email $email
