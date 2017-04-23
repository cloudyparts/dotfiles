#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"
FORMULA="$(basename ${0%%.sh})"

source "${CWD}/../../.lib.sh"

case $1 in
  install)
    msg "brew install ${FORMULA}"
    brew install ${FORMULA} --with-default-names >> $LOG 2>&1
    status "$?"
    ;;
  uninstall)
    run "brew uninstall ${FORMULA}"
    brew zap ${FORMULA} >> $LOG 2>&1
    ;;
  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
