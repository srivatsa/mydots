# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file
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

# Shell Options
#
#export PATH=~/anaconda3/bin
export PATH=/bin:${HOME}/bin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=${PATH}:/usr/local/sbin:${CARGOBIN}:${GOBIN}:${GITSCRIPTS}
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
shopt -s histappend
# attempt to save all lines of a multiple-line command in the same history entry
shopt -s cmdhist
# save multi-line commands to the history with embedded newlines
shopt -s lithist
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# date time TZ format 2016-12-26 19:18:55-0800
export HISTTIMEFORMAT="%F %T%z "
# ignore 1 or 2 char commands such as ls
export HISTIGNORE=?:??
# write every command to history
#export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
unset PROMPT_COMMAND
export HISTFILESIZE=10000000
export HISTSIZE=10000000
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
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

# Functions
#
# Some people use a different file for functions
if [ -f "${HOME}/mydots/bash_functions.bash" ]; then
    source "${HOME}/mydots/bash_functions.bash"
fi

# iterm
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# pyenv(?)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/workspace
eval "$(pyenv init -)"
pyenv virtualenvwrapper
pyenv virtualenvwrapper_lazy

# Anaconda2 installer
#export PATH="/Users/ssrivatsa/anaconda2/bin:$PATH"

# Some(thing/one) added this!
export GPG_TTY=$(tty)
echo "Set GPG_TTY to ${GPG_TTY}"
if [[ -n "$SSH_CONNECTION" ]] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi

# prompt
PS1="\[\e[1;34m\]\n[\$(date +%H%M-%Z)]\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

# perl (?)
PERL_MB_OPT="--install_base \"/Users/ssrivatsa/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ssrivatsa/perl5"; export PERL_MM_OPT;
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# br is a file explorer. Written in Rust.
source /Users/ssrivatsa/Library/Preferences/org.dystroy.broot/launcher/bash/br
