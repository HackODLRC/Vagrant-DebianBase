#!/usr/bin/env bash

echo "Installing python-dev and build-essential"
sudo apt-get update && sudo apt-get install -y python-dev build-essential
echo "Done!"

echo "Installing pip..."
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
echo "Done!"
echo "Installing virtualenv..."
sudo pip install virtualenv 
echo "Done!"
echo "Making a virtualenv and installing swiftclient and keystoneclient..."
mkdir swiftclient
virtualenv swiftclient
cd swiftclient
source bin/activate
pip install python-swiftclient
pip install python-keystoneclient
echo "Done!"

echo "Successfully installed swift command line tools."
echo "Remember: you need to activate the virtualenv to use them!"
echo "cd ~/swiftclient"
echo "source bin/activate"
echo "You also need to add your credentials to your .profile"