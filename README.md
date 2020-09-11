## Setting everything up:

Since macOS Catalina now uses ZSH as the default shell, the script might not work. Change to the bash shell by typing ```bash``` on the terminal before following the steps bellow.

1. Download the repo and extract the zip file.
2. Run the install script with:

```bash
sh install.sh
```

Brew programs and Visual Studio Code configurations will automatically installed and updated trough the script.

These are the programs you will need to manually install, since they are not avaible on Brew:

## Configuring Git and Github

```bash
sh gitconfig.sh
 ```

It will automatically set up the machine's git user and SSH keys.
