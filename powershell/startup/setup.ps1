# Configuration to git
$path_git_config = Test-Path $HOME\.gitconfig
if($path_git_config -eq $False){
  New-Item -ItemType SymbolicLink -Path $HOME\.gitconfig -Value $HOME\.config\.gitconfig
  }Else{
      Remove-Item $HOME\.gitconfig
      New-Item -ItemType SymbolicLink -Path $HOME\.gitconfig -Value $HOME\.config\.gitconfig
    }
# Configuration name and email of git
Write-Output "Name for git: " 
$name = Read-Host
git config --system user.name $name

Write-Output "Email for git: " 
$email = Read-Host
git config --system user.email $email

#Installed
#Add buckets of scoop
scoop bucket add main
scoop bucket add extras
scoop bucket add nerd-fonts
#Install packages for config pwsh
$install_list = "sudo", "alacritty", "starship", "lf", "lazygit", "bat", "neovim", "nvm", "zig", "stylua"
scoop install $install_list
sudo scoop install -g JetBrainsMono-NF

# Configuration alacritty
$path_alacritty= Test-Path $HOME\AppData\Roaming\alacritty
if ($path_alacritty -eq $False){
  New-Item -ItemType SymbolicLink -Path $HOME\AppData\Roaming\alacritty -Value $HOME\.config\alacritty
  }Else {
  Remove-Item $HOME\AppData\Roaming\alacritty
  New-Item -ItemType SymbolicLink -Path $HOME\AppData\Roaming\alacritty -Value $HOME\.config\alacritty
    }

# Install modules to powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# Create file for configuration
$path_pwsh = Test-Path $PROFILE.CurrentUserCurrentHost
if ($path_pwsh -eq $False){
  New-Item -ItemType File $PROFILE.CurrentUserCurrentHost
  ". $env:USERPROFILE\.config\powershell\pwsh_config.ps1" > $PROFILE.CurrentUserCurrentHost
  }Else{
      Remove-Item $PROFILE.CurrentUserCurrentHost
      New-Item -ItemType File $PROFILE.CurrentUserCurrentHost
      ". $env:USERPROFILE\.config\powershell\pwsh_config.ps1" > $PROFILE.CurrentUserCurrentHost
    }

# Configuration to lf
# SymbolicLink for configuration lf
$path_lf = Test-Path $HOME\AppData\Local\lf
if ($path_lf -eq $False){
  New-Item -ItemType SymbolicLink -Path $HOME\AppData\Local\lf -Value $HOME\.config\lf
  }Else{
      Remove-Item $HOME\AppData\Local\lf
      New-Item -ItemType SymbolicLink -Path $HOME\AppData\Local\lf -Value $HOME\.config\lf
    }

#Install node and npm with nvm
nvm install 19.8.1
nvm use 19.8.1

#NeoVim
# SymbolicLink for configuration Neovim
$path_nvim = Test-Path $HOME\AppData\Local\nvim
if($path_nvim -eq $False){
  New-Item -ItemType SymbolicLink -Path $HOME\AppData\Local\nvim -Value $HOME\.config\nvim
  }Else{
      Remove-Item $HOME\AppData\Local\nvim
      New-Item -ItemType SymbolicLink -Path $HOME\AppData\Local\nvim -Value $HOME\.config\nvim
    }
