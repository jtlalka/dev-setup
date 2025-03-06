# OPTIONS
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# PATH
export PATH="${PATH}:/Users/jtlalka/Library/Android/sdk/tools/"
export PATH="${PATH}:/Users/jtlalka/Library/Android/sdk/platform-tools/"

# ENV (android)
export ANDROID_HOME=/Users/jtlalka/Library/Android/sdk

# ENV (brew)
export LC_ALL=en_US.UTF-8
export HOMEBREW_NO_AUTO_UPDATE=1

# ALIASES
alias ll="ls -lG"
alias la="ls -laG"
alias cc="cd /"
alias rmdir="rm -rdf"
alias du="du -sh"

alias gk="gitk --all"
alias gs="git status -s"
alias gc="git checkout"
alias gb="git checkout -b"
alias gf="git fetch -p"
alias ga="git add ."

alias git-cz="git-cz commit"
alias git-log="git log --graph --oneline --all --decorate"
alias git-status="git status -s ; git diff --stat HEAD | tail -n 1"
alias git-main="git checkout main ; git pull"
alias git-epic="git branch | grep epic -m1 | xargs git checkout ; git pull"
alias git-clean="git branch | egrep -v '(master|develop|SPIKE)' | xargs git branch -D ; git gc"

alias chmod644="find . -type f -exec chmod 644 {} \;"
alias chmod755="find . -type d -exec chmod 755 {} \;"
alias chmod444="find . -type f -exec chmod 444 {} \;"

alias adb-proxy-on="adb shell settings put global http_proxy"
alias adb-proxy-off="adb shell settings put global http_proxy :0"
alias adb-logcat="adb logcat -v time -s FA FA-SVC"
alias adb-restart="adb kill-server ; adb start-server ; echo 'ADB Restart'"

# COMPLITION
autoload -Uz compinit && compinit

# PROMPT
autoload -Uz vcs_info

# Prompt format
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr "%F{red}▼%f"
zstyle ':vcs_info:git:*' stagedstr "%F{green}▲%f"
zstyle ':vcs_info:git:*' formats "%F{011}%b%f %u%c"
zstyle ':vcs_info:git:*' actionformats '%F{011}(%b|%a)%f %F{red}%u%f%F{green}%c%f'

# Prompt setup
function setprompt {
    setopt PROMPT_SUBST
    export PROMPT_NLINE=$'\n'
    PROMPT='%F{166}${PWD/#$HOME/~}%f %F{031}[%n]%f ${vcs_info_msg_0_} $PROMPT_NLINE%F{166}▶%f '
}

# Prompt init
precmd() {
    vcs_info
    setprompt
}
