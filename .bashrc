# MellowGamer1309's bashrc

# If not interactive, return
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# enable tab completion in sudo
complete -cf sudo

# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

### Shell colors ###
source $XDG_CONFIG_HOME/shell/colorsrc

### ALIASES ###
source $XDG_CONFIG_HOME/shell/aliasrc

### Shell Options ###

# change directories without cd
shopt -s autocd

# correct minor directory misspellings
shopt -s cdspell

# save multiline commands as one line
shopt -s cmdhist

# include files beginning with '.' in file globbing
shopt -s dotglob

# append history to histfile instead of overwriting
shopt -s histappend

# expand aliases on non-interactive shells
shopt -s expand_aliases

# automatically resize window
shopt -s checkwinsize

# enable extended globs, IE, globs + regex
shopt -s extglob

# ignore case with tab completion
bind "set completion-ignore-case on"

# # ex - archive extractor
# # usage: ex <file>
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

eval "$(starship init bash)"

