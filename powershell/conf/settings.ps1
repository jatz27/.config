# Terminal Icons
Import-Module -Name Terminal-Icons
# Import-Module posh-git
# Import-Module npm-completion

# PSReadLine
# Autocompletado con tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Navegar con las flechas en el auto completado
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Prediccion con el histirial
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView

# Starship
$ENV:STARSHIP_CONFIG = "$HOME\.config\powershell\conf\starship.toml"
$ENV:STARSHIP_DISTRO = " "
Invoke-Expression (&starship init powershell)

# Utilities
# Java Jabba
# Funcion para declarar version de java global (jabba-use jdk@1.8.255)
function jabba_use ($command) {
	jabba use $command
	$envRegKey = [Microsoft.Win32.Registry]::LocalMachine.OpenSubKey('SYSTEM\CurrentControlSet\Control\Session Manager\Environment', $true)
	$envPath=$envRegKey.GetValue('Path', $null, "DoNotExpandEnvironmentNames").replace('%JAVA_HOME%\bin;', '')
	[Environment]::SetEnvironmentVariable('JAVA_HOME', "$(jabba which $(jabba current))", 'Machine')
	[Environment]::SetEnvironmentVariable('PATH', "%JAVA_HOME%\bin;$envPath", 'Machine')
}

# Which saber las rutas de instalacion
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Simple function to start a new elevated process. If arguments are supplied then 
# a single command is started with admin rights; if not then a new admin instance
# of PowerShell is started.
function admin
{
    if ($args.Count -gt 0)
    {   
       $argList = "& '" + $args + "'"
       Start-Process "$psHome\pwsh.exe" -Verb runAs -ArgumentList $argList
    }
    else
    {
       Start-Process "$psHome\pwsh.exe" -Verb runAs
    }
}

# Declaration icons for LF
$Env:LF_ICONS = ((Get-Content -Path ($Env:USERPROFILE + '\.config\lf\icons') -Encoding utf8) -replace '\s*#.*','' -replace '(?<File_Regex>[\S]+)\s+(?<Icon_String>\S)','${File_Regex}=${Icon_String}') | ?{$_ -ne ""} | Join-string -Separator ':'
