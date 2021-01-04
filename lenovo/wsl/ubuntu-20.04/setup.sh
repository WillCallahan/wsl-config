#!/bin/bash

__dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo sed -i 's/deb http.*\/\s/deb https:\/\/nexus.i.callahanwilliam.com\/repository\/apt-proxy\/ /g' /etc/apt/sources.list
ex +'/BEGIN CERTIFICATE/,/END CERTIFICATE/p' <(echo | openssl s_client -showcerts -connect nexus.i.callahanwilliam.com:443) -scq > nexus.i.callahanwilliam.com.crt
sudo mv nexus.i.callahanwilliam.com.crt /usr/local/share/ca-certificates/
sudo update-ca-certificates
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
sudo apt install -y zsh fzf ripgrep silversearcher-ag npm lftp ffmpeg python3 python3-venv openjdk-14-jdk neovim iperf awscli subversion jq lastpass-cli pandoc postgresql-client mysql-client

echo "Installing yq"
wget https://github.com/mikefarah/yq/releases/download/v4.2.1/yq_linux_amd64 -O yq && chmod +x ~/yq
sudo mv ~/yq /usr/bin/yq

echo "Installing mssql-client"
cat "${__dir}/microsoft.asc" | sudo apt-key add -
echo 'deb [arch=amd64,armhf,arm64] https://nexus.i.callahanwilliam.com/repository/apt-proxy-microsoft focal main' | sudo tee /etc/apt/sources.list.d/msprod.list
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.zshrc

echo "Installing Vim-Plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Installing Leiningen"
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && chmod a+x lein
sudo mv lein /bin/lein

cd ~
mkdir git
cd git
git clone https://github.com/Lugoues/dot-zsh.git
ls -s /home/${USER}/git/dot-zsh/zsh /home/${USER}/.zsh
ls -s /home/${USER}/git/dot-zsh/zshrc /home/${USER}/.zshrc
