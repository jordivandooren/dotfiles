ZSH=~/.oh-my-zsh/
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
plugins=(git archlinux wd vi-mode pyenv common-aliases sudo mvn virtualenv pass)

DEFAULT_USER=jordi
prompt_context(){}

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

export SDKMAN_DIR="/home/jordi/.sdkman"
[[ -s "/home/jordi/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jordi/.sdkman/bin/sdkman-init.sh"
