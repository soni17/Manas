sudo apt-get install -y \
  git \
  wget \
  dconf-cli

# install asdf version manager
rm -rf ~/.asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
. "$HOME/.asdf/asdf.sh"

# install flatpak and flathub repo
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
