clear
# Install Windows Update
echo "==========================="
echo "After Format Update & Install Tool"
echo "by f6hri"
echo "=========================="
echo "Install Windows Update"
Install-Module PSWindowsUpdate
ECHO Y
Get-WindowsUpdate -AcceptAll -Install
ECHO Y
clear

# Install Programs
echo "==========================="
echo "After Format Update & Install Tool"
echo "by f6hri"
echo "========================== "
echo "Install Programs"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")
choco install googlechrome -y
choco install jre8 -y
choco install python -y
choco install 7zip.insta -y
choco install zoom -y
choco install vlc -y
choco install winr -y
choco install foxitreader -y

