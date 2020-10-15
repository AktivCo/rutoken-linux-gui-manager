#!/bin/bash

function realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

SCRIPT=`realpath "$0"`
SCRIPT_DIR=`dirname "$SCRIPT"`

cd "$SCRIPT_DIR"

"$SCRIPT_DIR/token-assistent.run" &
osascript -e 'tell application "Terminal" to close front window' > /dev/null 2>&1 &
