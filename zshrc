# https://github.com/ohmyzsh
# https://github.com/romkatv/powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# OH-MY-ZSH
if [ -d $HOME/.oh-my-zsh ]; then
    export ZSH="$HOME/.oh-my-zsh"
fi

# ZSH PLUGIN MANAGER
if [ -f $(brew --prefix)/share/antigen/antigen.zsh ]; then
    source $(brew --prefix)/share/antigen/antigen.zsh
fi

# THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# SPACESHIP OPTIONS
SPACESHIP_TIME_SHOW="true"

# AUTOCOMPLETION
CASE_SENSITIVE="true"

# PLUGINS
# $ZSH/plugins/
# $ZSH_CUSTOM/plugins/
plugins=(
    zsh-autosuggestions
    zsh-completions
)

# LOAD OH-MY-ZSH
if [ -f $ZSH/.oh-my-zsh ]; then
    source $ZSH/oh-my-zsh.sh
fi

# ALIAS
source $HOME/.alias

# clear screen
clear
