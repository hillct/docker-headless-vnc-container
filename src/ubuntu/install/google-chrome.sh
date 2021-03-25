#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
# Direct Download: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "Install Google Chrome Browser"
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
apt-get update -y
apt-get install -y fonts-liberation google-chrome-stable
apt autoremove -y
