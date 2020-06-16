#!/bin/bash

YELLOW="\033[33m"
BLUE="\033[34m"
NORMAL="\033[0;39m"

# Copy VS Code user settings
printf "${BLUE}Copying VS Code user settings...${NORMAL}\n\n"
eval "cp ./vscode/settings.json ~/Library/Application\ Support/Code/User"

# Install VS Code extensions from the list in extensions.txt
printf "${BLUE}Installing VS Code extensions...${NORMAL}\n"

if test $(which code); then
  filename="./vscode/extensions.txt"
  while read -r line;
  do
    printf "${YELLOW}Installing VS Code extension %s...${NORMAL}\n" "$line"
    eval "code --install-extension $line > /dev/null"
  done < "$filename"
fi
