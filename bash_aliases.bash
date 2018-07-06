# Some example alias instructions
# # If these are enabled they will be used instead of any instructions
# # they may mask.  For example, alias rm='rm -i' will mask the rm
# # application.  To override the alias instruction use a \ before, ie
# # \rm will call the real rm not the alias.
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# #
# # Interactive operation...
# # alias rm='rm -i'
# # alias cp='cp -i'
# # alias mv='mv -i'
# #
# # Default to human readable figures
# # alias df='df -h'
# # alias du='du -h'
# #
# # Misc :)
# # alias less='less -r'                          # raw control characters
# # alias whence='type -a'                        # where, of a sort
# GREP and all
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hFG'    # classify files in colour
alias ll='ls -l'      # long list
alias la='ls -A'      # all but . and ..
alias l='ls -CF'      #
alias lh='ls -laFhtr'
#
# local dirs -
alias set-up='/cygdrive/c/APPS/cygwin/setup-x86.exe'
alias gwa="cd $GIT_WA"
alias pwa="cd $P4_WA"
alias vi='vim'

alias 14u-start='cd ~ssrivatsa/vagbox/14trusty/;vagrant up;vagrant ssh'
alias 14u-ssh='cd ~ssrivatsa/vagbox/14trusty/;vagrant ssh'
alias 7c-start='cd ~ssrivatsa/vagbox/7centos/;vagrant up;vagrant ssh'
alias 7c-ssh='cd ~ssrivatsa/vagbox/7centos/;vagrant ssh'

if [ -f "${HOME}/mydots/bash_sfdcaliases.bash" ]; then
    source "${HOME}/mydots/bash_sfdcaliases.bash"
fi

#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
