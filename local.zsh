# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# This file is derived directly from its bash equiv
#
if [ -d "${HOME}/perl5/lib/perl5/" ]; then
    export PERL5LIB=${HOME}/perl5/lib/perl5/
else
    echo  "${HOME}/perl5/lib/perl5/ not found"
fi
if [ -d ${HOME}/go ]; then
    export GOPATH=${HOME}/go && export GOBIN=${GOPATH}/bin
else
    echo "${HOME}/go not found"
fi
if [ -d "${HOME}/.cargo/bin/" ]; then
    export CARGOBIN=${HOME}/.cargo/bin/
else
    echo "${HOME}/.cargo/bin/ not found"
fi
if [ -d "${HOME}/git_wa/github/git-scripts/" ]; then
    export GITSCRIPTS=${HOME}/git_wa/github/git-scripts/
else
    echo "${HOME}/git_wa/github-com/git-scripts/ not found"
fi

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# PATH Options
#
export PATH=/bin:~/bin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=${PATH}:/usr/local/sbin:${CARGOBIN}:${GOBIN}:${GITSCRIPTS}
#
#
# History Options
# History managed by oh-my-zsh under ~/.oh-my-zsh/lib/history.zsh
# SIZE's below locally set to override default values
HISTSIZE=100000000
SAVEHIST=100000000
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
if [ -f "${HOME}/mydots/bash_aliases.bash" ]; then
   source "${HOME}/mydots/bash_aliases.bash"
fi
#
# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

#
# Some people use a different file for functions
if [ -f "${HOME}/mydots/bash_functions.bash" ]; then
    source "${HOME}/mydots/bash_functions.bash"
fi

# pyenv(?)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/workspace
eval "$(pyenv init -)"
pyenv virtualenvwrapper
pyenv virtualenvwrapper_lazy

# Some(thing/one) added this!
export GPG_TTY=${TTY}
if [[ -n "$SSH_CONNECTION" ]] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi

# Set pager for BAT
export BAT_PAGER="less"

# perl (?)
PERL_MB_OPT="--install_base \"/Users/ssrivatsa/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ssrivatsa/perl5"; export PERL_MM_OPT;
