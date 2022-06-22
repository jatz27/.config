# Cerrar powershell control+d
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit
# Abrir lf control+o
Set-PSReadLineKeyHandler -Chord Ctrl+o -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('lf')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}
# Cargar la configuracion de powershell alt+p
Set-PSReadLineKeyHandler -Chord Alt+p -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('. $HOME\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}
