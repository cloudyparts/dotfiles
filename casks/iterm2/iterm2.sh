#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"
CASK="iterm2"
PLIST="com.googlecode.iterm2.plist"
SRC="${CWD}/${PLIST}"
DST="${HOME}/Library/Preferences/${PLIST}"

source "${CWD}/../../.lib.sh"

function install() {
  run "brew cask install ${CASK}"

  if [ -e "${DST}" ]; then
    msg "${U251C} backup current preferences"
    cp "${DST}" "${DST}-orig"
    status "$?"
  fi

  msg "${U2514} installing preferences"
  cp "${SRC}" "${DST}"
  status "$?"
}

case $1 in
  install)
    install
    ;;
  uninstall)
    $OSASCRIPT -e 'quit application "iTerm2"' >> $LOG 2>&1
    sleep 1s
    run "brew cask uninstall ${CASK}"
    brew cask zap ${CASK} >> $LOG 2>&1
    ;;
  *)
    echo $"Usage: $0 {install|uninstall}"
    exit 1
esac
