# Why use this?

This is an attempt to mitigate the stress and manual work of setting up a new machine. By no means it is fully optimized, and some manual work will still be necessary, but this will make my life easier.

## Setting everything up:

Since macOS Catalina now uses ZSH as the default shell, the script might not work. Change to the bash shell by typing ```bash``` on the terminal before following the steps bellow.

1. Download the repo and extract the zip file.
2. Run the install script with:

 ```bash
   sh install.sh
   ```

Most used wallpapers will be left in the wallpapers folder. Brew programs and Visual Studio Code configurations will automatically installed and updated trough the script.

These are the programs you will need to manually install, since they are not avaible on Brew:

- [Backup and Sync from Google](https://www.google.com/intl/pt-BR_ALL/drive/download/backup-and-sync/)

## Configuring Git and Github
There is also an automated script to generate your SSH key and sync with Github if you're in a hurry. Execute it with:

 ```bash
   sh gitconfig.sh
   ```


