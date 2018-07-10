# Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/aspnetcore-build:2.0  

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install 7zip.install

$7zPath = (Get-ChildItem "C:\Program Files","C:\Program Files (x86)" -Include "7-zip" -Recurse -ErrorAction SilentlyContinue).FullName

#add it to PATH environment variable
$env:Path += ";$7zPath;"
	
