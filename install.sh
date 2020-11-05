#!/bin/bash

# Remove the .dotfiles config file if it exists already; someone is running
# install multiple times.
# Create the .dotfiles config file so we can use the path for our functions 
rm $PWD/.dotfiles 2> /dev/null
echo -e "# Record the path where we installed the dot files; needed for our functions\n${PWD}" >> .dotfiles

# A block list of files that should not be symbolically linked.
declare -A block=([.functions]=1 [.gitignore]=1)

# Find all dot files then if the original file exists, create a backup
# Once backed up to {file}.dtbak symlink the new dotfile in place
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    # Do not create symbolic links for files in the block list
    if [ ! ${block[$file]} ]; then
        if [ -e ~/$file ]; then
            mv -f ~/$file{,.dtbak}
        fi
        ln -s $PWD/$file ~/$file
    fi
done

echo "Installed"
