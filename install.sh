#/bin/bash

# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# curl -L git.io/antigen > antigen.zsh

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