############################################################
# BASH SETTINGS
############################################################
# SET TERMINAL COLORS
export CLICOLOR=1

# LARGE COMMAND HISTORY FILE
HISTFILESIZE=1000000000
HISTSIZE=1000000

# IGNORE CASE IN TAB AUTOCOMPLETION
bind "set completion-ignore-case on"
if [ -f /opt/local/etc/bash_completion ]; then
     . /opt/local/etc/bash_completion
fi
############################################################
# BASH PROMPT
############################################################
# If you edit the prompt at all, make sure to escape any characters
# that don't print. It will look like your prompt is working
# but will cause problems with CTRL-r history searches.
# See:
# http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
# http://serverfault.com/questions/224306/why-does-ctrl-r-act-weirdly-showing-only-part-of-a-command-on-os-x
# This explains why we set the TERM to xterm
# http://stackoverflow.com/questions/35563/how-do-i-make-bash-reverse-search-work-in-terminal-app-without-it-displaying-garb
export TERM=xterm
PS1='\[\033[1;31m\]\#\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]@\[\033[1;33m\]\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\] \$ ' 

############################################################
# ENVIRONMENT VARIABLES
############################################################

# SVN
export SVN_EDITOR=vim

############################################################
# PATH DEFINITIONS
############################################################
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export PATH=/Users/username/bin:$PATH
export PATH=/Applications/MacVim:$PATH
export PATH=/opt/subversion/bin:$PATH

############################################################
# ALIAS DEFINITIONS 
############################################################
if [ -f $HOMEDIR/bash_aliases ]; then
    . $HOMEDIR/bash_aliases
fi

############################################################
# CUSTOM DEFINTIONS
#
# These are defined in a seperate folder that can be ignored
# by this Git repo, and customized across multiple deploys
# of this bash profile.
# Since they are in their own folder, they can even be a 
# seperate Git repo themselves.
############################################################
if [ -f $HOMEDIR/custom/aliases ]; then
    . $HOMEDIR/custom/aliases
fi

if [ -f $HOMEDIR/custom/profile ]; then
    . $HOMEDIR/custom/profile
fi
