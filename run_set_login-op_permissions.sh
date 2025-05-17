#!/bin/sh

FILE="$HOME/bin/login-op"
if [ -f "$FILE" ]
then
    if [ "$(stat -c %a "$FILE")" != "750" ]
    then
        chmod 750 "$FILE"
    fi
fi