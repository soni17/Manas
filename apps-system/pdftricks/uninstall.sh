if flatpak list | grep com.github.muriloventuroso.pdftricks
then
  flatpak uninstall -y --delete-data com.github.muriloventuroso.pdftricks
fi
