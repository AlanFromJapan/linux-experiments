# Install 
First, get git:
```
sudo apt install git
```

Then, get the repo:
```
mkdir ~/Git
cd ~/Git
git clone https://github.com/AlanFromJapan/linux-experiments.git
```

And then let the magic happen:
```
./run-all.sh
or
./run-basics.sh
```

----

# After install

## Git setup
Remember your git credentials (in clear text so beware!). Alternate is to use https://github.com/GitCredentialManager/git-credential-manager !
```
git config --global credential.helper store

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```
Then go make a PAT (Personnal Access Token) for your PC here : https://github.com/settings/tokens
and give it **repo** and **admin:repo_hook**.

Then do your first commit so you'll be asked these credentials and git will remember them.

## Other softs

- Install **OwnCloud Client** "Desktop App" https://owncloud.com/desktop-app/
    - If you take the AppImage, use the tool preinstalled "Startup Applications Preferences" and link to your AppImage
- Install **VS.Code** from here https://code.visualstudio.com/



