#! /usr/bin/zsh

set -e


setopt nocorrect
pacman -Sy --noconfirm git
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
# git clone git@github.com:BPplays/arch-auto-installs.git
git clone https://github.com/BPplays/arch-auto-installs.git
cd ./arch-auto-installs/laptop
./aui.sh