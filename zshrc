#!/bin/zsh

eval "$(zoxide init zsh)"

export EDITOR='nvim'

export BAT_THEME="gruvbox-dark"

export SKIM_DEFAULT_COMMAND="fd --type f"

export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

bindkey -e

function reboot() {
    osascript -e 'tell app "loginwindow" to «event aevtrrst»'
}

function shutdown() {
    osascript -e 'tell app "loginwindow" to «event aevtrsdn»'
}

function hide_dock() {
    defaults write com.apple.dock autohide-delay -float 1000; killall Dock
}

function show_dock() {
    defaults delete com.apple.dock autohide-delay; killall Dock
}

function confirm() {
    read -q -s "response?Are you sure?"
    if [[ "$response" = y ]]
    then
        true
    else
        false
    fi
}

alias ..="cd .."
alias ...="cd ../.."
alias c="code"
alias ca="cargo"
alias cab="cargo build"
alias cac="cargo check"
alias car="cargo run"
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
alias gst='git status'
alias gundo="confirm && git stash -u && git stash drop; echo"
alias l="eza -1"
alias la="eza -1 -a"
alias ll="eza -l"
alias ls="eza"
alias mkcd='foo() { mkdir -p "$1" && cd "$1"; }; foo'
alias n="nvim"
alias nvimrc="nvim $HOME/dotfiles/vimrc"
alias nzshrc="nvim $HOME/dotfiles/zshrc"
alias nfzf='nvim $(fzf)'
alias o="open"
alias sleep="pmset sleepnow"
alias slsk="~/rust/tap/target/release/tap ~/slsk"
alias sw="swift"
alias tree="eza --tree"
alias zshrc="source $HOME/.zshrc"
alias zz="z -"

source $HOME/dotfiles/themes/gnzh.zsh-theme

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $HOME/.fzfrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
