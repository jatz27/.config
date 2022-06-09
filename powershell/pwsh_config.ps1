# Oh my posh
# Import-Module posh-git
# oh-my-posh init pwsh | Invoke-Expression

# Theme
# $omp_config = Join-Path $PSScriptRoot ".\theme\jatz.omp.json"
# oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Starship
$ENV:STARSHIP_CONFIG = "$HOME\.config\powershell\starship\starship.toml"
$ENV:STARSHIP_DISTRO = "  $env:username"
Invoke-Expression (&starship init powershell)

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

# Alias
Set-Alias vim nvim
Set-Alias cat bat
Set-Alias pcstop Stop-Computer
Set-Alias pcreset Restart-Computer
Set-Alias touch New-Item
Set-Alias g git
Set-Alias py python
function a {
	Set-Location A:
}
function .. {
	Set-Location ..
}
function la {
	Get-ChildItem -h -Force
}

# Java Jabba
# Funcion para declarar version de java global (jabba-use jdk@1.8.255)
function jabba_use ($command) {
	jabba use $command
	$envRegKey = [Microsoft.Win32.Registry]::LocalMachine.OpenSubKey('SYSTEM\CurrentControlSet\Control\Session Manager\Environment', $true)
	$envPath=$envRegKey.GetValue('Path', $null, "DoNotExpandEnvironmentNames").replace('%JAVA_HOME%\bin;', '')
	[Environment]::SetEnvironmentVariable('JAVA_HOME', "$(jabba which $(jabba current))", 'Machine')
	[Environment]::SetEnvironmentVariable('PATH', "%JAVA_HOME%\bin;$envPath", 'Machine')
}

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

