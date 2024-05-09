export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gallois"

plugins=(
  git
  colorize
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
export NODE_OPTIONS=--openssl-legacy-provider

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/cristian/google-cloud-sdk/path.zsh.inc' ]; then . '/home/cristian/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/cristian/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/cristian/google-cloud-sdk/completion.zsh.inc'; fi
