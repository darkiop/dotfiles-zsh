#/bin/bash

dir="Github/dotfiles-zsh"
files="zshrc alias"

# delete old symlinks
for file in $files; do
    if [ -f ~/.$file ]; then
        echo "delete: ~/.$file"
        rm ~/.$file
    fi
done

# new symlinks for files and folders
for file in $files; do
    echo "create: ~/.$file"
    ln -s $dir/$file ~/.$file
done