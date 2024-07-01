# install latest version of Java (openjdk)
asdf plugin add java
OPENJDK=$(asdf list all java | grep openjdk | grep -v + | tail -1)
asdf install $OPENJDK
asdf global $OPENJDK
