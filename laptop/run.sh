#! /usr/bin/zsh

setopt nocorrect
pacman -Sy --noconfirm git yes
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
yes | git clone git@github.com:BPplays/arch-auto-installs.git
cd ./arch-auto-installs/laptop
./aui.sh