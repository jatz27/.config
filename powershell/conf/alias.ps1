# Alias
Set-Alias v nvim
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

# Set UNIX-like aliases for the admin command, so sudo <command> will run the command
# with elevated rights. 
Set-Alias -Name su -Value admin
