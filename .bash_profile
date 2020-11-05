#!/bin/bash

# Add the dot file dir path to a global var
export DOTFILES=$(cd $HOME && grep -v ^\# .dotfiles | grep  .)
