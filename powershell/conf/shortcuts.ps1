# Close powershell control+d
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit
# Abrir lf control+o
Set-PSReadLineKeyHandler -Chord Alt+o -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('~\.config\powershell\conf\lfcd.ps1')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}
# Refresh configuration powershell alt+p
Set-PSReadLineKeyHandler -Chord Alt+p -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('. $PROFILE')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

# Lazygit alt+g
Set-PSReadLineKeyHandler -Chord Alt+g -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('lazygit')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

# Lazydocker alt+d
Set-PSReadLineKeyHandler -Chord Alt+d -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('lazydocker')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}
