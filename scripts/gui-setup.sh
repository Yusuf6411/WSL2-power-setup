#!/bin/bash

echo "Installing GUI apps..."
sudo apt install -y xfce4 xfce4-terminal firefox

echo "Installing X server integration for Windows..."
echo "You need to install an X server on Windows (like VcXsrv) and configure DISPLAY=:0"

echo "GUI setup complete! Launch apps with 'startxfce4' inside WSL."