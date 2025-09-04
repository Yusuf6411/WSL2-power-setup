# WSL2 Power Setup Installer
# Run as Administrator

Write-Host "Checking Windows version..."
$winver = (Get-ComputerInfo).WindowsVersion
Write-Host "Windows version: $winver"

Write-Host "Enabling WSL and Virtual Machine Platform..."
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Write-Host "Setting WSL2 as default..."
wsl --set-default-version 2

Write-Host "Installing Ubuntu..."
wsl --install -d Ubuntu

Write-Host "Done! Launch Ubuntu and run 'setup-linux.sh' inside your home folder."