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
```

----

# After install

## Git setup
Remember your git credentials (in clear text so beware!)
```
git config --global credential.helper store

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```
Then go make a PAT (Personnal Access Token) for your PC here : https://github.com/settings/tokens
and give it **repo** and **admin:repo_hook**.
