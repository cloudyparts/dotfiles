#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../../.lib.sh"


function install() {
  run "pip install powerline-status"
  run "brew cask install font-anonymice-powerline"
  run "brew cask install font-inconsolata-dz-for-powerline"
  run "brew cask install font-consolas-for-powerline"
  run "brew cask install font-inconsolata-for-powerline"
  run "brew cask install font-monofur-for-powerline"
  run "brew cask install font-dejavu-sans-mono-for-powerline"
  run "brew cask install font-inconsolata-g-for-powerline"
  run "brew cask install font-roboto-mono-for-powerline"
  run "brew cask install font-droid-sans-mono-for-powerline"
  run "brew cask install font-liberation-mono-for-powerline"
  run "brew cask install font-source-code-pro-for-powerline"
  run "brew cask install font-fira-mono-for-powerline"
  run "brew cask install font-menlo-for-powerline"
  run "brew cask install font-ubuntu-mono-derivative-powerline"
}


function uninstall() {
  run "brew cask uninstall font-anonymice-powerline"
  run "brew cask uninstall font-inconsolata-dz-for-powerline"
  run "brew cask uninstall font-consolas-for-powerline"
  run "brew cask uninstall font-inconsolata-for-powerline"
  run "brew cask uninstall font-monofur-for-powerline"
  run "brew cask uninstall font-dejavu-sans-mono-for-powerline"
  run "brew cask uninstall font-inconsolata-g-for-powerline"
  run "brew cask uninstall font-roboto-mono-for-powerline"
  run "brew cask uninstall font-droid-sans-mono-for-powerline"
  run "brew cask uninstall font-liberation-mono-for-powerline"
  run "brew cask uninstall font-source-code-pro-for-powerline"
  run "brew cask uninstall font-fira-mono-for-powerline"
  run "brew cask uninstall font-menlo-for-powerline"
  run "brew cask uninstall font-ubuntu-mono-derivative-powerline"
  run "pip uninstall powerline-status"
}

#!/usr/bin/env bash


source "${CWD}/../../.lib.sh"

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
