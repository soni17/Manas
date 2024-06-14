# update and upgrade
sudo apt update -y
sudo apt full-upgrade -y  
sudo apt dist-upgrade -y
sudo apt autoremove -y

# run uninstaller
bash uninstallers/uninstall-bloat.sh

# dependencies for installers
sudo apt install -y \
  git \
  wget \
  curl \
  dconf-cli

# run installers
for script in ./installers/*.sh; do source $script; done

# install packages from Debian repo
sudo apt install -y adb gnome-screenshot cmatrix gtkhash vlc gnome-clocks rhythmbox shotcut webcamoid timeshift gnome-disk-utility gnome-package-updater package-update-indicator caja-admin caja-image-converter caja-open-terminal caja-rename gdebi mozo redshift blueman htop btop ncdu gucharmap lsb-release neofetch lshw tldr bat transmission 

# update and cleanup
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# purge residual-config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
