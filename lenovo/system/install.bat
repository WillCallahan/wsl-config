@echo off

choco upgrade chocolatey

REM SDKs
choco install -y python3
choco install -y dotnetcore-sdk
choco install -y nodejs

REM Version Control
choco install -y git

REM IDEs
choco install -y jetbrainstoolbox
choco install -y R.Studio
choco install visualstudio2019community

REM VPN
choco install -y viscosity

REM DBMS Clients
choco install -y sql-server-management-studio
choco install -y sqlsearch

REM Docker
choco install -y docker
choco install -y docker-desktop
choco install -y docker-compose

choco install -y awscli

choco install -y sublimetext3

choco install -y adobe-creative-cloud

choco install -y slack
choco install -y keybase

choco install -y amazon-music
choco install -y steam

choco install -y wireguard
