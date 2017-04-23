#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"
FORMULA="homebrew/dupes/openssh"

source "${CWD}/../../.lib.sh"

case $1 in
  install)
    run "brew install ${FORMULA}"
    ;;
  uninstall)
    run "brew uninstall ${FORMULA}"
    brew zap ${FORMULA} >> $LOG 2>&1
    ;;
  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
