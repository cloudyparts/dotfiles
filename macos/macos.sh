#!/usr/bin/env bash


CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"


function reset () {
  SCRIPT=$(find "$CWD" -name "${1}.sh" -print)

  if [ "${SCRIPT}" == "" ]; then
      echo "${red}Unknown preference: ${1}${end}"
  else
      sh ${SCRIPT}
  fi
}


function list () {
  find . -name "*.sh" \
      -execdir sh -c "echo {} | sed 's|\(.*\)\.sh$|\1|g' | grep -v macos" \;
}


case $1 in
    bootstrap)
        sudo -v
        find "${CWD}" -name "*.sh" -execdir sh -c "sh {}" \;
        ;;
    reset)
        reset $2
        ;;
    list)
        list
        ;;
    *)
        echo $"Usage: $0 {bootstrap|reset|list}"
        exit 1
esac
