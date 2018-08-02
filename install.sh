#! /bin/bash

echo "----------------------------------"
echo "Update/upgrade"
sudo apt-get -y update
sudo apt-get -y upgrade

echo "----------------------------------"
echo "Install Python 2.7/git dev environment"
sudo apt-get -y install python-dev python-pip ipython git
git config --global credential.helper store

echo "----------------------------------"
echo "Install Pypot"
sudo apt-get -y install libopenblas-dev python-scipy
sudo pip install pypot

echo "----------------------------------"
echo "Install NodeJs 8"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
npm install socket.io
npm install zeromq
npm install express
npm install ip


