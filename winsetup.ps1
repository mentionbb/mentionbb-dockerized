$global:ProgressPreference = "SilentlyContinue"

$figletBase64 = Get-Content ".\figlet.base64" -Raw
$figlet = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($figletBase64))

$wwwPath = ".\www"

Write-Host $figlet
Write-Host " "

$confirmation = Read-Host "The latest version of MentionBB will be downloaded and installed, do you confirm? (y/n)"

if ($confirmation -eq 'y') {
	Clear-Host
	
    . "$PSScriptRoot\.winsetup\setup.ps1"
}