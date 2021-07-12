# ... there is more here but these are the things I always want when setting up a new box
# Most the time I leave whatever is already in .bashrc after an install and append these.

alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ls='ls -lshGg --hyperlink --color=always'
alias ll='ls -lshGg --hyperlink --color=always'
alias la='ls -a'
alias clera="clear" # because I typo this way too often
alias x="clear"
alias s="sudo "

#git
alias gitlog='git log --graph --decorate --pretty=oneline --abbrev-commit'
# posh git
source /home/ben/.local/lib/posh-git-sh/git-prompt.sh # cloned from git@github.com:lyze/posh-git-sh.git
export PROMPT_COMMAND='__posh_git_ps1 "\\[\[\e[0;32m\]\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\$\[\e[0m\] ";'$PROMPT_COMMAND

#AWS
export AWS_PROFILE=### todo

#Arch stuff for scripts
export AUR_DIR="/home/ben/.local/lib/aur"
