# OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"

# THEME
ZSH_THEME="spaceship"

# SPACESHIP OPTIONS
SPACESHIP_TIME_SHOW="true"

# AUTOCOMPLETION
CASE_SENSITIVE="true"

# PLUGINS
# $ZSH/plugins/
# $ZSH_CUSTOM/plugins/
plugins=(
    git
    zsh-autosuggestions
)

# LOAD OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

# ALIAS
source $HOME/.alias