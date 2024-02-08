
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
RED="\[\033[1;31m\]"
RESET="\[\033[0m\]"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="${YELLOW}\u@${YELLOW}\h ${BLUE}\w${RED}\$(parse_git_branch)${RESET} "