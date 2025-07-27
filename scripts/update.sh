#!/usr/bin/zsh

echo "Update process started, and cleaning cache ..."

yay -Syu --noconfirm 

sks.sh

yay -Scc --noconfirm
