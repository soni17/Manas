source run-commands/updater.sh

installed_version=$(apt info dbgate | grep Version | awk -F[' '] '{print $2}')
latest_version=$(curl -s "https://api.github.com/repos/dbgate/dbgate/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')

updater $installed_version $latest_version "apps-development/dbgate/install.sh" "DbGate"
