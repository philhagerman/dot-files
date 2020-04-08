#Check if we are in home directory and alias it as Home
checkIfHome() {
  if [ $PWD = '/Users/phil' ]; then
    print -P 'Home'
  else
    print -P $PWD
  fi
}

precmd() { CUR_DIR=$(checkIfHome) }
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@$CUR_DIR:%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%{$fg[blue]%}|%{$reset_color%}"
