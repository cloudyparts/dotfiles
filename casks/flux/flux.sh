#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"
CASK="flux"
PLIST="org.herf.Flux.plist"
SRC="$CWD/$PLIST"
DST="$HOME/Library/Preferences/$PLIST"

source "${CWD}/../../.lib.sh"


case $1 in
  install)
    run "brew cask install ${CASK}"
	  cp "$SRC" "$DST"
	  chmod 600 "$DST"
	  sleep 2s
    $OSASCRIPT -e 'tell application "Flux" to activate' >> $LOG 2>&1
    ;;

  uninstall)
    $OSASCRIPT -e 'quit application "Flux"' >> $LOG 2>&1
    sleep 1s
    run "brew cask uninstall ${CASK}"
    brew cask zap ${CASK} >> $LOG 2>&1
    ;;

  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
