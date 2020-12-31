#!/bin/bash

sudo sed -i 's/deb http.*\/\s/deb https:\/\/nexus.i.callahanwilliam.com\/repository\/apt-proxy\/ /g' /etc/apt/sources.list
ex +'/BEGIN CERTIFICATE/,/END CERTIFICATE/p' <(echo | openssl s_client -showcerts -connect nexus.i.callahanwilliam.com:443) -scq > nexus.i.callahanwilliam.com.crt
sudo mv nexus.i.callahanwilliam.com.crt /usr/local/share/ca-certificates/
sudo update-ca-certificates
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
sudo apt install -y zsh fzf ripgrep silversearcher-ag npm lftp ffmpeg python3 python3-venv openjdk-14-jdk neovim iperf awscli subversion jq lastpass-cli
cd ~
mkdir git
cd git
git clone https://github.com/Lugoues/dot-zsh.git
ls -s /home/${USER}/git/dot-zsh/zsh /home/${USER}/.zsh
ls -s /home/${USER}/git/dot-zsh/zshrc /home/${USER}/.zshrc
