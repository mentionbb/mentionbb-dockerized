$releases = "https://api.github.com/repos/mentionbb/mentionbb/releases"

Write-Host Determining latest release
$dd = (Invoke-WebRequest $releases | ConvertFrom-Json)[0].tag_name

$zip = "$dd.zip"
$download = "https://github.com/mentionbb/mentionbb/archive/refs/tags/$zip"

Write-Host Dowloading latest release
Invoke-WebRequest $download -Out $zip

Write-Host Extracting..
Expand-Archive $zip -Force

Copy-Item $dd\mentionbb-$dd\* -Destination $wwwPath -Force -Recurse -Verbose

Remove-Item $zip -Force -Recurse
Remove-Item $dd -Force -Recurse

Set-Location -Path $wwwPath

Write-Host Applied vendor files..
Expand-Archive src\vendor.zip -Force
Copy-Item vendor\* -Destination "src\vendor" -Force -Recurse -Verbose

Remove-Item vendor -Force -Recurse
