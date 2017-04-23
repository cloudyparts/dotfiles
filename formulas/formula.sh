#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

OFS=$IFS
IFS=$'\n' FORMULAS=($(<${CWD}/.formulas))
IFS=$OFS


function bootstrap() {
  local formula
  for formula in "${FORMULAS[@]}"
  do
    invoke "${CWD}/${formula}/${formula}.sh" install
  done
}


case $1 in
    bootstrap)
        bootstrap
        ;;

    install)
        invoke "${CWD}/$2/$2.sh" install
        ;;

    uninstall)
        invoke "${CWD}/$2/$2.sh" uninstall
        ;;

    *)
        echo $"Usage: $0 {bootstrap|install|uninstall}"
        exit 1
esac
