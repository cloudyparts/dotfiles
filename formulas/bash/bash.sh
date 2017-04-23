#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"
FORMULA="$(basename ${0%%.sh})"

source "${CWD}/../../.lib.sh"


function install() {
  run "brew install ${FORMULA}"

  # Switch to using brew-installed bash as default shell
  if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
    echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
    chsh -s /usr/local/bin/bash;
  fi;

  msg "${U2514} installing dotfiles"
  cpdf ${CWD}/dot-*
  status "$?"
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
