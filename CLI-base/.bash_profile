export EDITOR='emacs -nw'
#export DIFFPROG='nvim -d'
#export VISUAL='nvim'
export PAGER='less'
export GOPATH="$HOME/go"
export GPG_TTY=$(tty)
export LESS='-iMRS -x2'
export SYSTEMD_LESS='FRXMK'

# bat
export BAT_PAGER="less -RS"
export BAT_THEME="OneHalfDark"

# NNN
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export NO_AT_BRIDGE=1

pathappend() {
  for ARG in "$@"
  do
    if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
        PATH="${PATH:+"$PATH:"}$ARG"
    fi
  done
}

pathappend "$HOME/dotfiles/bin" "$GOPATH/bin" "$HOME/.local/bin"

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

[[ -f ~/.bashrc ]] && . ~/.bashrc
