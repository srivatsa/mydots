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
alias lj='ls -laFht'
#
# local dirs -
#alias set-up='/cygdrive/c/APPS/cygwin/setup-x86.exe'
alias gwa="cd $GIT_WA"
alias pwa="cd $P4_WA"
alias vi='vim'
alias j='jrnl'
alias jdj='jrnl dj'
alias jqj='jrnl qj'

alias gpa='for a in gh gl bb; do git push ${a} master;done'
alias gdu='git diff -U0'

alias 7c-start='echo "Need to move to using docker. Try that first. This is broken anyways 2020-12-28 Mon 10:22 AM"'
#'cd ~ssrivatsa/vagbox/7centos/;vagrant up;vagrant ssh'
alias 7c-ssh='echo "Need to move to using docker. Try that first. This is broken anyways 2020-12-28 Mon 10:22 AM"'
#'cd ~ssrivatsa/vagbox/7centos/;vagrant ssh'
alias 27c-start='echo "Need to move to using docker. Try that first. This is broken anyways 2020-12-28 Mon 10:22 AM"'
#'cd ~ssrivatsa/vagbox/22-7centos/;vagrant up;vagrant ssh'
alias 27c-ssh= 'echo "Need to move to using docker. Try that first. This is broken anyways 2020-12-28 Mon 10:22 AM"'
alias 30f-ssh='echo "Need to move to using docker. Try that first. This is broken anyways  2020-12-28 Mon 10:22 AM"'
alias 30f-start='echo "Need to move to using docker. Try that first. This is broken anyways 2020-12-28 Mon 10:22 AM"'

# Process SFDC specific aliases
#if [ -f "${HOME}/mydots/bash_sfdcaliases.bash" ]; then
#    source "${HOME}/mydots/bash_sfdcaliases.bash"
#fi

#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
