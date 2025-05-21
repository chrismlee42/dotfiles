#!/usr/bin/env bash

declare -A FILE_MODES=(
    ["$HOME/.local/bin/login-op"]="700"
)

for FILE in "${!FILE_MODES[@]}"
do
    # echo "FILE is \"$FILE\""
    MODE=${FILE_MODES[$FILE]}
    # echo "MODE is is \"$MODE\""
    if [ -f "$FILE" ]
    then
        if [ "$(stat -c %a "$FILE")" != $MODE ]
        then
            # echo "changing file mode for $FILE"
            chmod $MODE "$FILE"
        fi
    fi
done