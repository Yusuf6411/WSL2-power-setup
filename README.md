# WSL2 Power Setup ⚡

Automate your **WSL2 + Linux setup on Windows** in minutes.  
Get a ready-to-go Ubuntu/Debian environment with essential tools installed—no manual fuss!

## Features
- ✅ Installs WSL2 and Ubuntu/Debian automatically
- ✅ Sets up popular dev tools: git, python, docker, neovim
- ✅ Optional GUI apps in WSL2
- ✅ Backup and restore your WSL distros easily
- ✅ Works on Windows 10 & 11

## Quick Start

1. Open PowerShell as Administrator
2. Run:
\`\`\`powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
.\scripts\install-wsl2.ps1
\`\`\`
3. Launch your WSL distro and run:
\`\`\`bash
bash scripts/setup-linux.sh
\`\`\`

## Backup & Restore
\`\`\`bash
bash scripts/backup-restore.sh backup   # Backup WSL distros
bash scripts/backup-restore.sh restore  # Restore WSL distros
\`\`\`

## Optional GUI Apps
\`\`\`bash
bash scripts/gui-setup.sh
\`\`\`

## Screenshots / Demo
*(Include GIFs of install process and Linux desktop running inside Windows)*

## Contributing
PRs welcome! 🚀  

## License
MIT