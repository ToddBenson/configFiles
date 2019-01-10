#!/bin/bash
service postgresql start
msfdb init
apt-get update
apt-get upgrade
apt-get install -y mtr
apt-get install -y hexchat
apt-get install -y emacs
apt-get install -y screen
apt-get install -y nload
apt-get install -y ipcalc
apt-get install -y htop
git clone --recursive git://github.com/magnars/.emacs.d.git ~/.emacs.d
git clone https://github.com/ToddBenson/FileUploadTests.git /opt/fileuploadtestfiles
git clone https://github.com/danielmiessler/SecLists.git /opt/seclist
git clone https://github.com/drwetter/testssl.sh.git /opt/testssl
git clone https://github.com/ToddBenson/checkHeaders.git /opt/checkHeaders
git clone https://github.com/leebaird/discover /opt/discover/
git clone https://github.com/SpiderLabs/Responder /opt/responder/
git clone https://github.com/gauntlt/gauntlt /opt/gauntlt
git clone https://github.com/hak5darren/USB-Rubber-Ducky.git /opt/ducky
git clone https://github.com/troyhunt/PineappleSurprise.git /opt/pineapple
git clone https://github.com/hak5/bashbunny-payloads.git /opt/bunny
git clone https://github.com/1N3/Sn1per.git /opt/sniper
git clone https://github.com/Alfresco/aws-cis-security-benchmarks.git
pip install awscli
pip install awsscout2
gem install cf-uaac
# CF-cli
# Concourse-cli
# BOSH-cli
# Docker-cli
cd /opt/pineapple
wget wifipineapple.com/wp6.sh
chmod +x /opt/pineapple/wp6.sh
cd /opt/bunny
wget bashbunny.com/bb.sh
chmod +x /opt/bunny/bb.sh
cd /opt/gauntlt
source ./install_gauntlt_deps.sh
cd /opt/discover
./update.sh
cd /opt/sniper
./install.sh
passwd
echo "Tools installed:"
ls /opt/
bash /opt/gauntlt/ready_to_rumble.sh
which emacs
which hexchat
echo "Delete ssh keys and run ssh-keygen to create new keys."
