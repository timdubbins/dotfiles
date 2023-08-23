#!/bin/zsh

#source $HOME/.zgen/zgen.zsh

#if ! zgen saved; then
#  zgen oh-my-zsh themes/gnzh
#  zgen save
#fi

#PS1=' ▶ '

autoload -Uz compinit
compinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

eval "$(zoxide init zsh)"

export EDITOR='nvim'
export BAT_THEME="gruvbox-dark"
export SKIM_DEFAULT_COMMAND="fd --type f"
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

#function reboot() {
#    osascript -e 'tell app "loginwindow" to «event aevtrrst»'
#}

#function shutdown() {
#    osascript -e 'tell app "loginwindow" to «event aevtrsdn»'
#}

function mkcd() {
  mkdir "$1"
  cd "$1"
}

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

alias ~="cd ~"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias c="code"
alias ca="cargo"
alias cs="clear"
alias fdd="fd -t d"
alias fd1="fd -d 1"
alias fd2="fd -d 2"
alias fd3="fd -d 3"
alias g="git"
alias ga='git add'
alias gb='git branch'
alias gc='git commit --verbose'
alias gd='git diff'
alias gs='git status'
alias l="exa -1"
alias la="exa -1 -a"
alias ll="exa -l"
alias ls="exa"
alias n="nvim"
alias nvimrc="nvim $HOME/dotfiles/vimrc"
alias nzshrc="nvim $HOME/dotfiles/zshrc"
alias o="open"
alias shutdown="shutdown now"
alias sleep="pmset sleepnow"
alias sw="swift"
alias tree="exa --tree"
alias zshrc="source $HOME/.zshrc"
alias zz="z -"

source $HOME/.zsh/themes/git.zsh
source $HOME/.zsh/themes/gnzh.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.fzfrc
