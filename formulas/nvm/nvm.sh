#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"
FORMULA="$(basename ${0%%.sh})"

source "${CWD}/../../.lib.sh"


function install() {
  run "brew install ${FORMULA}"

  if [ ! -d "${HOME}/.nvm" ]; then
    mkdir -p "${HOME}/.nvm"
  fi

  if [ -e "/usr/local/opt/nvm/nvm.sh" ]; then
    msg "${U2514} installing nvm.sh"
    cp /usr/local/opt/nvm/nvm.sh "${HOME}/.nvm"
    rc=$?
    status "$rc"
  fi
}


case $1 in
  install)
    install
    ;;

  uninstall)
    run "brew uninstall ${FORMULA}"
    brew zap ${FORMULA} >> $LOG 2>&1
    ;;

  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
