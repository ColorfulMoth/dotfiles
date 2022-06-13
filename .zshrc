#################################
# Vanilli.sh configuration file #
#################################

source "$HOME/.zsh/vanilli/vanilli.zsh"

#############
# Utilities #
#############

test -s ~/.alias && . ~/.alias || true

#############
# Workspace #
#############

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

. "$HOME/.cargo/env"

# Neovim as manpager
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist noma nu rnu' -\""
# Unless this line is here, man pages will look buggy on OpenSUSE
export GROFF_NO_SGR=yes


###############
# Decorations #
###############

eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
