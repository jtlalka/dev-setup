# OPTIONS
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# PATH
export PATH="${PATH}:/Users/jtlalka/Library/Android/sdk/tools/"
export PATH="${PATH}:/Users/jtlalka/Library/Android/sdk/platform-tools/"

# ENV
export ANDROID_HOME=/Users/jtlalka/Library/Android/sdk

# ALIASES
alias ll="ls -lG"
alias la="ls -laG"
alias cc="cd /"
alias rmdir="rm -rdf"
alias du="du -sh"

alias gk="gitk --all"
alias gs="git status -s ; git diff --stat HEAD | tail -n 1"
alias gb="git checkout -b"
alias gf="git fetch -p"
alias ga="git add ."
alias gp="git pull"
alias gd="git diff --stat"
alias gl="git log --graph --oneline --all --decorate"
alias git-epic="git branch | grep epic -m1 | xargs git checkout ; git pull"
alias git-clean="git branch | egrep -v '(master|develop|spike)' | xargs git branch -D"

alias chmod644="find . -type f -exec chmod 644 {} \;"
alias chmod755="find . -type d -exec chmod 755 {} \;"
alias chmod444="find . -type f -exec chmod 444 {} \;"

# APP ALIASES
alias chrome="open -n -a 'Google Chrome' --args --profile-directory='Guest Profile'"

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
