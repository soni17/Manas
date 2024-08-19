# uninstall unused packages
sudo apt-get purge -y \
  fonts-noto \
  gnome-keyring \
  seahorse \
  firefox-esr* \
  libreoffice* \
  gimp* \
  goldendict \
  mlterm \
  mlterm-tiny \
  xterm \
  xiterm+thai \
  orca \
  mate-applet-brisk-menu \
  mate-applets \
  mate-utils \
  wswedish \
  wportuguese \
  wpolish \
  wnorwegian \
  wngerman \
  witalian \
  wdutch \
  wdanish \
  wcatalan \
  wbulgarian \
  wbrazilian \
  ibrazilian \
  ibulgarian \
  icatalan \
  idanish \
  idutch \
  ihungarian \
  iitalian \
  ilithuanian \
  ingerman \
  inorwegian \
  ipolish \
  iportuguese \
  irussian \
  task-amharic-desktop \
  task-amharic \
  task-arabic-desktop \
  task-arabic \
  task-asturian-desktop \
  task-asturian \
  task-basque-desktop \
  task-basque \
  task-belarusian-desktop \
  task-belarusian \
  task-bengali-desktop \
  task-bengali \
  task-bosnian-desktop \
  task-bosnian \
  task-brazilian-portuguese-desktop \
  task-brazilian-portuguese \
  task-bulgarian-desktop \
  task-bulgarian \
  task-catalan-desktop \
  task-catalan \
  task-chinese-s-desktop \
  task-chinese-s \
  task-chinese-t-desktop \
  task-chinese-t \
  task-croatian-desktop \
  task-croatian \
  task-cyrillic-desktop \
  task-cyrillic \
  task-czech-desktop \
  task-czech \
  task-danish-desktop \
  task-danish \
  task-dutch-desktop \
  task-dutch \
  task-dzongkha-desktop \
  task-esperanto-desktop \
  task-esperanto \
  task-estonian-desktop \
  task-estonian \
  task-finnish-desktop \
  task-finnish \
  task-galician-desktop \
  task-galician \
  task-georgian-desktop \
  task-german-desktop \
  task-german \
  task-greek-desktop \
  task-greek \
  task-gujarati-desktop \
  task-gujarati \
  task-hebrew-desktop \
  task-hebrew \
  task-hindi-desktop \
  task-hindi \
  task-hungarian-desktop \
  task-hungarian \
  task-icelandic-desktop \
  task-icelandic \
  task-indonesian-desktop \
  task-irish-desktop \
  task-irish \
  task-italian-desktop \
  task-italian \
  task-japanese-desktop \
  task-japanese \
  task-kannada-desktop \
  task-kazakh-desktop \
  task-kazakh \
  task-khmer-desktop \
  task-khmer \
  task-korean-desktop \
  task-korean \
  task-kurdish-desktop \
  task-kurdish \
  task-latvian-desktop \
  task-latvian \
  task-lithuanian-desktop \
  task-lithuanian \
  task-macedonian-desktop \
  task-macedonian \
  task-malayalam-desktop \
  task-malayalam \
  task-marathi-desktop \
  task-marathi \
  task-nepali-desktop \
  task-northern-sami-desktop \
  task-northern-sami \
  task-norwegian-desktop \
  task-norwegian \
  task-persian-desktop \
  task-persian \
  task-polish-desktop \
  task-polish \
  task-portuguese-desktop \
  task-portuguese \
  task-punjabi-desktop \
  task-punjabi \
  task-romanian-desktop \
  task-romanian \
  task-russian-desktop \
  task-russian \
  task-serbian-desktop \
  task-serbian \
  task-sinhala-desktop \
  task-slovak-desktop \
  task-slovak \
  task-slovenian-desktop \
  task-slovenian \
  task-south-african-english-desktop \
  task-swedish-desktop \
  task-swedish \
  task-tagalog \
  task-tamil-desktop \
  task-tamil \
  task-telugu-desktop \
  task-telugu \
  task-thai-desktop \
  task-thai \
  task-turkish-desktop \
  task-turkish \
  task-ukrainian-desktop \
  task-ukrainian \
  task-uyghur-desktop \
  task-vietnamese-desktop \
  task-welsh-desktop \
  task-welsh \
  task-xhosa-desktop \
  aspell-am \
  aspell-ar-large \
  aspell-ar \
  aspell-bg \
  aspell-ca \
  aspell-cs \
  aspell-cy \
  aspell-da \
  aspell-de \
  aspell-el \
  aspell-eo \
  aspell-et \
  aspell-eu \
  aspell-fa \
  aspell-ga \
  aspell-gl-minimos \
  aspell-he \
  aspell-hr \
  aspell-hu \
  aspell-is \
  aspell-it \
  aspell-kk \
  aspell-ku \
  aspell-lt \
  aspell-lv \
  aspell-nl \
  aspell-no \
  aspell-pl \
  aspell-pt-br \
  aspell-pt-pt \
  aspell-ro \
  aspell-ru \
  aspell-sk \
  aspell-sl \
  aspell-sv \
  aspell-tl \
  myspell-eo \
  myspell-et \
  myspell-fa \
  myspell-ga \
  myspell-he \
  myspell-nb \
  myspell-nn \
  myspell-sk \
  hunspell-ar \
  hunspell-be \
  hunspell-bg \
  hunspell-bs \
  hunspell-ca \
  hunspell-cs \
  hunspell-da \
  hunspell-de-at \
  hunspell-de-ch \
  hunspell-de-de \
  hunspell-el \
  hunspell-eu \
  hunspell-gl \
  hunspell-gu \
  hunspell-hi \
  hunspell-hr \
  hunspell-hu \
  hunspell-id \
  hunspell-is \
  hunspell-it \
  hunspell-kk \
  hunspell-kmr \
  hunspell-ko \
  hunspell-lt \
  hunspell-lv \
  hunspell-ne \
  hunspell-nl \
  hunspell-pl \
  hunspell-pt-br \
  hunspell-pt-pt \
  hunspell-ro \
  hunspell-ru \
  hunspell-si \
  hunspell-sl \
  hunspell-sr \
  hunspell-sv \
  hunspell-te \
  hunspell-th \
  hunspell-vi 

sudo apt-get autoremove -y

sudo apt-get autoclean -y

# delete residual config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
