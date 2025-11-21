#!/bin/sh

sudo apt-get install silversearcher-ag
sudo npm i -g -y typescript-language-server typescript

cd ~
wget https://github.com/Malnati/emacsti/archive/0.0.0-pre-release-1.zip
sudo chmod +x 0.0.0-pre-release-1.zip
unzip 0.0.0-pre-release-1.zip
ln -s ~/emacsti-0.0.0-pre-release-1 ~/.emacsti
ln -s ~/emacsti-0.0.0-pre-release-1/init.el ~/.emacs
rm 0.0.0-pre-release-1.zip
