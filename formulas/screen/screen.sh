#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"
FORMULA="$(basename ${0%%.sh})"

source "$CWD/../../.lib.sh"

function install() {
  run "brew install ${FORMULA}"

  msg "${U2514} installing dotfiles"
  cpdf ${CWD}/dot-*
  rc=$?
  status "$rc"
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
