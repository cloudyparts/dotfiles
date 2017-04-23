#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

OFS=$IFS
IFS=$'\n' CASKS=($(<${CWD}/.casks))
IFS=$OFS


function bootstrap() {
  local cask
  for cask in "${CASKS[@]}"
  do
    invoke "${CWD}/${cask}/${cask}.sh" install
  done
}


case $1 in
    bootstrap)
        sudo -v
        bootstrap
        ;;

    install)
        invoke "${CWD}/$2/$2.sh" install
        ;;

    uninstall)
        invoke "${CWD}/$2/$2.sh" uninstall
        ;;

    *)
        echo $"Usage: $0 {bootstrap|install|uninstall|reset}"
        exit 1
esac
