# download and install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# fix for slow startup
sudo sed -i "s/StartupNotify=true//" /usr/share/applications/google-chrome.desktop
