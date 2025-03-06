# OPTIONS
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# PATH
export PATH="${PATH}:/Users/jtlalka/Library/Android/sdk/tools/"
export PATH="${PATH}:/Users/jtlalka/Library/Android/sdk/platform-tools/"

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

alias chmod444="find . -type f -exec chmod 444 {} \;"
alias chmod644="find . -type f -exec chmod 644 {} \;"
alias chmod755="find . -type d -exec chmod 755 {} \;"

# GIT-PROMPT
if [[ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# GIT-COMPLETION
if [[ -f /usr/local/etc/bash_completion ]]; then
    source "/usr/local/etc/bash_completion"
fi
