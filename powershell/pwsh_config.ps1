# Oh my posh
Import-Module posh-git
Import-Module oh-my-posh
# Theme
$omp_config = Join-Path $PSScriptRoot ".\theme\jatz.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

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
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias cat bat
Set-Alias pcstop Stop-Computer
Set-Alias pcreset Restart-Computer
Set-Alias touch New-Item
Set-Alias g git
function a {
	cd A:
}
function .. {
	cd ..
}
function la {
	ls -h -Force
}

# Java Jabba
# Funcion para declarar version de java global (jabba-use jdk@1.8.255)
function jabba-use ($command) {
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
