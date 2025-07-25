#!/bin/bash

SCRIPT_NAME="ShellCheff"
INSTALL_PATH="/usr/local/bin"

echo "[*] Making script executable..."
chmod +x $SCRIPT_NAME

echo "[*] Copying script to $INSTALL_PATH ..."
sudo cp $SCRIPT_NAME $INSTALL_PATH/

echo "[*] Setting execute permission..."
sudo chmod +x $INSTALL_PATH/$SCRIPT_NAME

# Python ve pip3 kontrolü
if ! command -v python3 &> /dev/null
then
    echo "[!] Python3 is not installed. Please install Python3 first."
    exit 1
fi

if ! command -v pip3 &> /dev/null
then
    echo "[!] pip3 is not installed. Installing pip3..."
    sudo apt update && sudo apt install -y python3-pip
fi

echo "[*] Installing required Python packages..."
sudo pip3 install art --break-system-packages
sudo pip3 install argparse --break-system-packages

echo "[*] Installing required APT packages..."
sudo apt install netcat

echo "Installation Complete! You can write '$SCRIPT_NAME' to terminal to use it."
