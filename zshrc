# OH-MY-ZSH
if [ -d $HOME/.oh-my-zsh ]; then
    export ZSH="$HOME/.oh-my-zsh"
fi

# ZSH PLUGIN MANAGER
if [ -f $(brew --prefix)/share/antigen/antigen.zsh ]; then
    source $(brew --prefix)/share/antigen/antigen.zsh
fi

# THEME
if [ -d $ZSH_CUSTOM/themes/spaceship-prompt ]; then
    ZSH_THEME="spaceship"
else 
    ZSH_THEME="bira"
fi

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