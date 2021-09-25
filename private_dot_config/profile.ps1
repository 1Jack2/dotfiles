# put this in $profile ####################################################
# $profile = [System.Environment]::ExpandEnvironmentVariables("%HOMEDRIVE%%HOMEPATH%") + "\.config\profile.ps1"
# . $profile
###########################################################################

Set-PSReadLineOption -EditMode Emacs
# https://superuser.com/questions/1113429/disable-powershell-beep-on-backspace
Set-PSReadlineOption -BellStyle None

# Import-Module posh-git # 引入 posh-git
# Import-Module oh-my-posh # 引入 oh-my-posh
# Set-PoshPrompt -Theme agnoster # 设置主题

# PSFzf
# Update-Module -Name PSFzf -Scope CurrentUser
Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module PSFzf

# starship
Invoke-Expression (&starship init powershell)

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录

Set-PSReadlineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense

$env:VISUAL="nvim"
$env:EDITOR="nvim"

# alias
Remove-Item alias:ls
Function gs {git status}
Function gb {git branch}
Set-Alias -Name vi -Value nvim
Set-Alias -Name proxy -Value proxychains
Set-Alias -Name cm -Value chezmoi

