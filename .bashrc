#!/bin/bash

# Safely export the dotfile repo location
# See: https://stackoverflow.com/a/17123575/3193156
declare DOTFILES=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Load aliases
if [ -f "$DOTFILES/.bash_aliases" ]; then
    . "$DOTFILES/.bash_aliases"
else
    echo -e "\033[0;31mERROR: Could not load your personal bash_aliases.\033[0m"
fi

# Load functions
if [ -f "$DOTFILES/.functions" ]; then
    . "$DOTFILES/.functions"
else
    echo -e "\033[0;31mERROR: Could not load your personal functions.\033[0m"
fi

# Load profile
if [ -f "$DOTFILES/.bash_profile" ]; then
    . "$DOTFILES/.bash_profile"
else
    echo -e "\033[0;31mERROR: Could not load your personal bash_profile.\033[0m"
fi

# Load exports
if [ -f "$DOTFILES/.bash_exports" ]; then
    . "$DOTFILES/.bash_exports"
else
    echo -e "\033[0;31mERROR: Could not load your personal bash_exports.\033[0m"
fi
