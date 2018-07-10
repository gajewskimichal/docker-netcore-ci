# Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/aspnetcore-build:2.0

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install 7zip.install
	
