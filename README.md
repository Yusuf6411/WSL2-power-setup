# WSL2 Power Setup

A collection of scripts to automate the installation and setup of **WSL2** (Windows Subsystem for Linux 2) and a Linux environment on Windows 10/11. This project simplifies configuring Ubuntu, installing essential packages, and setting up a ready-to-use development environment.

---

## Prerequisites

* Windows 10 (Build 2004 or higher) or Windows 11
* PowerShell with **Administrator privileges**
* Internet connection
* **Git installed** (see instructions below)

### Installing Git

If Git is not installed, follow these steps:

1. Download Git for Windows from [https://git-scm.com/download/win](https://git-scm.com/download/win).
2. Run the installer and follow the default options.
3. After installation, verify Git is working by opening PowerShell and running:

```powershell
git --version
```

It should display the installed Git version.

---

## Installation Steps for First-Time Users

### 1. Clone the Repository (Recommended)

Open PowerShell **as Administrator** and run:

```powershell
# Clone the repository
git clone https://github.com/Yusuf6411/WSL2-power-setup.git
cd WSL2-power-setup

# Allow scripts to run
Set-ExecutionPolicy Bypass -Scope Process -Force

# Run the installer script
.\scripts\install-wsl2.ps1
```

This ensures all scripts exist locally before executing them.

---

### 2. Download Scripts Directly (Alternative)

If you prefer not to clone the repo, download the installer script directly:

```powershell
# Download the installer script
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Yusuf6411/WSL2-power-setup/main/scripts/install-wsl2.ps1" -OutFile "install-wsl2.ps1"

# Allow scripts to run
Set-ExecutionPolicy Bypass -Scope Process -Force

# Run the installer
.\install-wsl2.ps1
```

---

### 3. Setup Linux Environment

After WSL2 installation, run the Linux setup script:

```powershell
.\scripts\setup-linux.sh
```

This will:

* Update Ubuntu packages
* Install essential packages (build tools, curl, git, etc.)
* Configure user environment

You may also run these commands manually inside WSL if needed:

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential curl git
```

---

### 4. Backup & Restore Scripts

You can backup or restore your Linux environment with:

```bash
# Backup
.\scripts\backup-restore.sh backup

# Restore
.\scripts\backup-restore.sh restore
```

---

## Notes & Tips

* Always **run PowerShell as Administrator** for Windows setup scripts.
* Restart your PC after WSL2 installation if prompted.
* Check your WSL version with:

```powershell
wsl --list --verbose
```

---

## License

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.
