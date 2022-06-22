# Terminal Icons
Import-Module -Name Terminal-Icons
# Posh cd bash
Import-Module -Name posh-cd

# PSReadLine
# Autocompletado con tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Navegar con las flechas en el auto completado
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Prediccion con el histirial
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView # La lista de comandos mientras se estan escribiendo

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
