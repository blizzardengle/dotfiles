#!/bin/bash

to="$HOME/.bashrc"
str="# Link to a tracked version of .bashrc"
line=$(grep -n "$str" ~/.bashrc)

if [[ ${#line} -gt 0 ]]; then
    start="${line//[!0-9]/}"
    end=$((start+3))
    cmd="sed -e '$start,${end}d' \"$to\""
    alt=$(eval $cmd)
    echo "$alt" > "$to"
    echo "Uninstalled."
else
    echo 'Already uninstalled or you altered the following comment in ~/.bashrc:'
    echo "$str"
fi
