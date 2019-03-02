#!/usr/bin/env bash
echo "	Welcome to Synkrino"
sudo apt-get install unzip
wget https://github.com/devprabal/synkrino/archive/master.zip
unzip -d ./syn master.zip
cd syn/synkrino-master
cd geckodriver-v0.24.0-linux64
chmod +x geckodriver
cd ..
python3 -m pip install --upgrade pip
python3 -m venv synevn
source synenv/bin/activate
pip install -r requirements.txt
echo "	Successfully Installed all dependencies"
echo "	To run the script type python3 app.py and then open 0.0.0.0:3000 in firefox"
echo "	To disable the virtual environment type deactivate"
