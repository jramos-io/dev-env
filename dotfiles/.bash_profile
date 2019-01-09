HOME=${HOME:-'/Users/justin'}

[ -r $HOME/.bash_aliases ] && . $HOME/.bash_aliases
[ -r $HOME/.bash_aliases.local ] && . $HOME/.bash_aliases.local
[ -r $HOME/.bash_completion ] && . $HOME/.bash_completion
[ -r $HOME/.bash_profile.local ] && . $HOME/.bash_profile.local
[ -r $HOME/.bash_prompt ] && . $HOME/.bash_prompt
[ -r $HOME/.profile ] && . $HOME/.profile

export GOROOT=$HOME/go
export GOPATH=$HOME/go
export PATH=$HOME/bin:$HOME/go/bin:$PATH
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin

export HH_CONFIG=hicolor                   # get more colors
export HISTCONTROL=erasedups:ignorespace   # hide leading space and duplicates
export HISTFILESIZE=10000                  # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}            # increase history size (default is 500)
export FIGNORE=DS_Store;

export CFLAGS="-march=native -O3 -pipe"
export CXXFLAGS="${CFLAGS}"
export EDITOR="atom --wait"

if [[ $- =~ .*i.* ]]; then
  bind '"\e[5C": forward-word'
  bind '"\e[1;5C": forward-word'
  bind '"\e[5D": backward-word'
  bind '"\e[1;5D": backward-word'

  # bind hh to Ctrl-r (for Vi mode check doc)
  bind '"\C-r": "\C-a hh -- \C-j"'
  # bind 'kill last command' to Ctrl-x k
  bind '"\C-xk": "\C-a hh -k \C-j"'
  bind '"\C-r": "\C-ahstr -- \C-j"'
fi

# append new history items to .bash_history
shopt -s histappend
# Make bash check its window size after a process completes
shopt -s checkwinsize