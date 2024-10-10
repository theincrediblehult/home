#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
STARTCOLOR='\e[0;34m';
ENDCOLOR="\e[0m"

#SOMELINES="seq $(tput cols)| xargs -Iz echo - | tr -d '\n'"

#PS1="$STARTCOLOR[\u \t \w]\n~> $ENDCOLOR"



alias ls='ls --color=auto'
alias citrix="/opt/Citrix/ICAClient/wfica"
alias l="ls -al"
alias vimbrc="vim ~/.bashrc"
alias srcbrc="source ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias gs="git status"

alias ff="find . -name "
alias scrots="scrot '/tmp/%F_%T_$wx$h.png' -s -e 'xclip -selection clipboard -target image/png -i \$f'"
alias scrotu="scrot '/tmp/%F_%T_$wx$h.png' -u -e 'xclip -selection clipboard -target image/png -i \$f'"
alias scrota="scrot '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -target image/png -i \$f'"

fzf_cd() {
  pushd "$(find . -type d | fzf)"
}

fzf_cd_projects() {
  local dir
  dir=$(ls -d ~/projects/* | fzf)
  
  if [ -n "$dir" ]; then
    pushd "$dir"
  else
    echo "No selection."
  fi
}
RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
BLUE2="\[\033[00;34m\]"
YELLOW="\[\033[0;33m\]"
RESETPOS="\[\033[0G\]"
 
PS_LINE=`printf -- '- %.0s' {1..200}`
function parse_git_branch {
  PS_BRANCH=''
  PS_FILL=${PS_LINE:0:$COLUMNS}
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  PS_BRANCH="(git ${ref#refs/heads/}) "
}
PROMPT_COMMAND=parse_git_branch
PS_INFO="$BLUE2\u@\h$RESET:$BLUE\w"
PS_GIT="$YELLOW\$PS_BRANCH"
PS_TIME="\[\033[\$((COLUMNS-10))G\] $RED[\t]"
export PS1="\${PS_FILL}${RESETPOS}${PS_INFO} ${PS_GIT}${PS_TIME}\n${RESET}~> "
