#!/usr/bin/env bash

red=$'\e[0;31m'
grn=$'\e[0;32m'
yel=$'\e[0;33m'
blu=$'\e[0;34m'
mag=$'\e[0;35m'
cyn=$'\e[0;36m'
wht=$'\e[0;37m'
end=$'\e[0m'

U2514="└──"
U251C="├──"

LOG=/tmp/dotctl.log
HOMEBREW_CASK_OPTS="--appdir=/Applications"
OSASCRIPT=/usr/bin/osascript
SQLITE=/usr/bin/sqlite3
PLUTIL=/usr/bin/plutil
PLBUDY=/usr/libexec/PlistBuddy
CHFLAGS=$(which chflags)
TCCDB="/Library/Application Support/com.apple.TCC/TCC.db"
NOW=$(date +"%Y%m%d-%H%M%S")


function msg() {
  if [[ $1 == *"${U2514}"* || $1 == *"${U251C}"* ]]; then
     printf "%-76s" "${1}"
  else
     printf "%-70s" "${1}"
  fi
}


function status() {
  if [ "$1" -ne "0" ]; then
    printf "%8s\n" "${red}[FAILED]${end}"
  else  
    printf "%8s\n" "${grn}[OK]${end}"
  fi    
}


function run() {
  local cmd=$1
  msg "${cmd}"
  ${cmd} >> $LOG 2>&1
  status "$?"
}


function invoke() {
  local script=$1

  if [ ! -e "${script}" ]; then
    echo "warning: script not found [$script]" >> $LOG
    return
  fi

  sh "${script}" $2
}


# copy dotfiles but backup any already existing dotfiles
cpdf() {
    local file
    local filename
    local realfn

    for file in ${@:1}
    do
        filename=$(basename $file)
        realfn=${filename/dot-/.}
        
        if [[ -e "${HOME}/${realfn}" ]]; then
            mkdir -p "${HOME}/.dotfiles/backup/${NOW}"
            mv "${HOME}/${realfn}" "${HOME}/.dotfiles/backup/${NOW}/${realfn}"
        fi

        if [ -d "${file}" ]; then
          cp -R "$file" "${HOME}/$realfn"
        else
          cp "$file" "${HOME}/$realfn"
        fi
    done
}
