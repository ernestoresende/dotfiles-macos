#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Configures git:
printf "\n${BLUE}Configuring Git...${NORMAL}\n"
printf "%s\n" "Write your Git username:" 

read USER
DEFAULT_EMAIL="$USER@users.noreply.github.com"

read -p "Write your git email [Press enter to accept the private email $DEFAULT_EMAIL]: " EMAIL
EMAIL="${EMAIL:-${DEFAULT_EMAIL}}"

printf "\n${BLUE}Configuring global user name and email...${NORMAL}\n"
git config --global user.name "$USER"
git config --global user.email "$EMAIL"

printf "%s\n" "Configuring global aliases..."
git config --global alias.ci commit
git config --global alias.st status


printf "%s\n" "Adding git credentials..."
printf "%s\n" "Configuring git SSH access..."
ssh-keygen -t rsa -b 4096 -C "$EMAIL"
printf "%s\n" "This is your public key. To activate it in github, go to settings, SHH and GPG keys, New SSH key, and enter the following key:"
cat ~/.ssh/id_rsa.pub
