export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gallois" # set by `omz`

plugins=(
  git
  colorize
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.pyenv/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"

export HOME_SERVER_IP="192.168.0.134"
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

rtmux() {
    cd ~/.local/share/tmux/resurrect/ || exit # Your save path
    find . | sort | tail -n 1 | xargs rm
    find . -printf "%f\n" | sort | tail -n 1 | xargs -I {} ln -sf {} last
    cd - || exit
}
