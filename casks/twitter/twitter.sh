#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "${CWD}/../../.lib.sh"


function install() {
  msg "installing twitter from app store"

  if [ -d "/Applications/Twitter.app" ]; then
    status "$?"
    return
  fi

  $OSASCRIPT "${CWD}/install.scpt" >> $LOG 2>&1
  status "$?"

  sleep 2s;
  $OSASCRIPT -e 'tell application "App Store" to quit'
}


function uninstall() {
  if [ ! -d "/Applications/Twitter.app" ]; then
    return 
  fi

  $OSASCRIPT -e 'quit application "Twitter"' >> $LOG 2>&1
  sleep 1s

  msg "uninstalling twitter app"
  sudo mv "/Applications/Twitter.app" "$HOME/.Trash"
  status "$?"
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
