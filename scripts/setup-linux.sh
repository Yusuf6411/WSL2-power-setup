#!/bin/bash

echo "Updating package lists..."
sudo apt update -y && sudo apt upgrade -y

echo "Installing development tools..."
sudo apt install -y git curl wget neovim build-essential python3 python3-pip docker.io

echo "Enabling Docker without sudo..."
sudo usermod -aG docker $USER

echo "Setup complete! Please restart WSL or log out and back in."