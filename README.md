# Dotfiles
My Dotfiles configuration for powershell\
Install with [scoop](https://scoop.sh/#/) or [chocolatey](https://chocolatey.org/)<br>
>**NOTE: Sccop create the directory .config and to clone repository we have to delete it**
<br>
### Install
[font JetBrainsMono](https://www.nerdfonts.com/font-downloads)\
[alacritty](https://alacritty.org/)\
[powershell core](https://github.com/PowerShell/PowerShell/releases)\
[starship](https://starship.rs/)\
[neovim](https://neovim.io/)\
[lf](https://pkg.go.dev/github.com/gokcehan/lf)\
[bat](https://github.com/sharkdp/bat)\
<br>
Clone repository<br>
````powershell
Remove-Item $HOME\.config && git clone https://github.com/jatz27/dotfiles.config.git $HOME\.config
````
## Alacritty
> NOTE: Execute como admin for create ``Symboliclink`` of config alacritty
``````````powershell
New-Item -ItemType SymbolicLink -Path $HOME\AppData\Roaming\alacritty -Value $HOME\.config\alacritty
``````````
## Powershell
Install required PWSH modules
``````````powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
``````````
For PWSH has to refer to the configurable file 
``````````powershell
nvim $PROFILE.CurrentUserCurrentHost
``````````
> NOTE: This will tell PWSH that the configuration file is in .config
## LF
> NOTE: Execute como admin for create ``Symboliclink`` of config lf
``````````powershell
New-Item -ItemType SymbolicLink -Path $HOME\AppData\Local\lf -Value $HOME\.config\lf
``````````
## Neovim
### Install
[node](https://nodejs.org/en/) or
[nvm](https://github.com/coreybutler/nvm-windows)\
[zig](https://scoop.sh/#/apps?q=zig&s=0&d=1&o=true)\
[stylua](https://scoop.sh/#/apps?s=0&d=1&o=true&q=stylua)
> NOTE: Execute como admin for create ``Symboliclink`` of config nvim
``````````powershell
New-Item -ItemType SymbolicLink -Path $HOME\AppData\Local\nvim -Value $HOME\.config\nvim
``````````
>**NOTE: When opening NeoVim for the first time expect it to install everything**
### Tabnine
cmp-tabnine you have to run the manual script in the installation path
``````````powershell
. $HOME\AppData\Local\nvim-data\lazy\cmp-tabnine\install.ps1
``````````
