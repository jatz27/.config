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
function cdb {
	 cd -
}
