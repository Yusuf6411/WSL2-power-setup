#!/bin/bash

BACKUP_DIR="$HOME/wsl_backups"
mkdir -p $BACKUP_DIR

if [ "$1" == "backup" ]; then
    echo "Backing up WSL distros..."
    for distro in $(wsl --list --quiet); do
        echo "Backing up $distro..."
        wsl --export $distro "$BACKUP_DIR/$distro.tar"
    done
    echo "Backup complete at $BACKUP_DIR"
elif [ "$1" == "restore" ]; then
    echo "Restoring WSL distros..."
    for file in $BACKUP_DIR/*.tar; do
        distro=$(basename "$file" .tar)
        echo "Restoring $distro..."
        wsl --import $distro "$HOME/wsl/$distro" "$file" --version 2
    done
    echo "Restore complete."
else
    echo "Usage: $0 [backup|restore]"
fi