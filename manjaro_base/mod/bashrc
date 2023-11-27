# colors
darkgrey="$(tput setaf 8)"
yellow="$(tput setaf 3)"
white="$(tput setaf 7)"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
blue="$(tput setaf 4)"
cyan="$(tput setaf 6)"
nc="$(tput sgr0)"

# Costom Prompt

export PS1="\[$darkgrey\]\w \[$white\]>\[$cyan\]>\[$white\]> \[$nc\]"

# costom alias
alias ls="ls --color"
alias vi="vim"
alias shred="shred -zf"
alias wget="wget -U 'NAK'"
alias curl="curl --user-agent 'NAK'"

# Archive Extractor function
ex ()
{
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
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

