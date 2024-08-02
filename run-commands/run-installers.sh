# minimize output to show only the name of app and status of installation
# error outputs are sent to /tmp/manas-errors.log
run () {
  for dir in $1
  do
    app=${dir%*/}
    app="${app##*/}"
    echo -ne "$app...installing \r"

    source "$dir/install.sh" 1> /dev/null 2>> /tmp/manas-errors.log 

    if [ "$?" -eq "0" ]; then
      echo -e "$(tput setaf 2)$app...installed \xE2\x9C\x94 $(tput setaf 7)"
    else
      echo -e "$(tput setaf 1)$app...installation failed $(tput setaf 7)"
    fi
  done
}

run "apps-system/*/"
run "apps-development/*/"
run "apps-other/*/"
