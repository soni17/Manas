# https://vscodium.com/#install-on-debian-ubuntu-deb-package

# add repository
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

# install
sudo apt update
sudo apt install -y codium

# install extensions
codium --install-extension akamud.vscode-theme-onedark
codium --install-extension eamodio.gitlens
codium --install-extension esbenp.prettier-vscode
codium --install-extension file-icons.file-icons
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension janicweber.soft-grey-theme
codium --install-extension jeanp413.open-remote-ssh
codium --install-extension mbessey.vscode-rufo
codium --install-extension ms-azuretools.vscode-docker
codium --install-extension ritwickdey.liveserver
codium --install-extension vortizhe.simple-ruby-erb

# config file
mkdir -p ~/.config/VSCodium/User
cp configs/vscodium.json ~/.config/VSCodium/User/settings.json
