#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"
CASK="docker"

source "${CWD}/../../.lib.sh"

case $1 in
  install)
    run "brew cask install ${CASK}"
    ;;
  uninstall)
    $OSASCRIPT -e 'quit application "Docker"' >> $LOG 2>&1
    sleep 1s
    run "brew cask uninstall ${CASK}"
    brew cask zap ${CASK} >> $LOG 2>&1
    ;;
  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
