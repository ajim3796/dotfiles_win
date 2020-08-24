Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSFzf

Set-Theme Emodipt

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineOption -Colors @{ Prediction = 'DarkGray' }

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r' -TabExpansion

Enable-PsFzfAliases

function bd { Set-Location .. }

Set-Alias which where.exe

function touch($filename) { New-Item -type file $filename }
