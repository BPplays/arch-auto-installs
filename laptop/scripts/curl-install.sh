#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in aui Folder."
    echo "Please use ./aui.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the aui Project"
git clone https://github.com/christitustech/aui

echo "Executing aui Script"

cd $HOME/aui

exec ./aui.sh
