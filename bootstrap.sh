#!/usr/bin/env bash
echo '### Updating system ...'
sudo rm -f /etc/resolv.conf
sudo sh -c "echo nameserver 8.8.8.8 > /etc/resolv.conf"
sudo apt-get update
sudo apt-get install -y build-essential curl git

echo '### Install Ruby Version Manager ...'
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.profile
rvm install 2.2.2

echo '### Install Node Version Manager ...'
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm
source ~/.nvm/nvm.sh
nvm install stable
nvm use stable
nvm alias default stable

echo '### Install global modules ...'
npm install -g yo gulp bower

echo '### Install generator gulp angular'
npm install -g generator-gulp-angular

echo '### Install Sass, jade and Compass'
gem install sass compass

echo 'source ~/.nvm/nvm.sh && nvm use 0.10'  >> ~/.bashrc
