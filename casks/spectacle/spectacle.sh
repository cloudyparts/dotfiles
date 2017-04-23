#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"
CASK="spectacle"
ETC="$HOME/Library/Application Support/Spectacle"
SRC="$CWD/Shortcuts.json"
DST="$ETC/Shortcuts.json"

source "${CWD}/../../.lib.sh"


function install() {
  msg "brew cask install ${CASK}"

  if [ -d "/Applications/Spectacle.app" ]; then
    status "$?"
    return 0
  fi

  brew cask install ${CASK} >> $LOG 2>&1
  status "$?"
  sleep 2s 

  sudo $SQLITE "${TCCDB}" < "${CWD}/insert.sql" >> $LOG 2>&1
  sleep 1s 

  $OSASCRIPT "$CWD/config.scpt" >> $LOG 2>&1
  [ ! -d "$ETC" ] && mkdir -m 755 "$ETC"
  cp "$SRC" "$DST" >> $LOG 2>&1
  chmod 644 "$DST" >> $LOG 2>&1

  sleep 1s 
  $OSASCRIPT -e 'tell application "Spectacle" to activate'
}


function uninstall() {
  if [ ! -d "/Applications/Spectacle.app" ]; then
    return 0
  fi

  $OSASCRIPT -e 'quit application "Spectacle"' >> $LOG 2>&1
  sleep 1s

  sudo $SQLITE "${TCCDB}" < "${CWD}/delete.sql" >> $LOG 2>&1

  run "brew cask uninstall ${CASK}"

  brew cask zap ${CASK} >> $LOG 2>&1
}



case $1 in
  install)
    install
    ;;
  uninstall)
    uninstall
    ;;
  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
