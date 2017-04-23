#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../../.lib.sh"

run "brew install python"

msg "${U2514} pip install --upgrade pip setuptools"
pip install --upgrade pip setuptools >> $LOG 2>&1
rc=$?
status "$rc"
