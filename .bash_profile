#!/bin/bash

# Add the dot file dir path to a global var
export DOTFILES=$(grep -v ^\# .dotfiles | grep  .)
