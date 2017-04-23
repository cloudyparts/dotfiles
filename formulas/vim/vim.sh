#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"
FORMULA="$(basename ${0%%.sh})"

source "$CWD/../../.lib.sh"

function install() {
  msg "brew install ${FORMULA}"
  brew install ${FORMULA} --with-override-system-vi >> $LOG 2>&1
  status "$?"

  msg "${U251C} installing dotfiles"
  cpdf ${CWD}/dot-* 
  rc=$?
  status "$rc"

  msg "${U251C} installing vim-plug"
  curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  status "$?"

  msg "${U2514} installing vim plugins"
  vim -c ":PlugInstall|q|q" /tmp/blah >> $LOG 2>&1
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
