#! /bin/bash

echo "----------------------------------"
echo "Update/upgrade"
sudo apt-get -y update
sudo apt-get -y upgrade

echo "----------------------------------"
echo "Install Python 2.7 dev environment"
sudo apt-get -y install python-dev python-pip ipython git

echo "----------------------------------"
echo "Install Pypot"
sudo apt-get -y install libopenblas-dev
sudo pip install pypot


