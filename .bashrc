
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
     #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias ls='ls -larth --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='\ls --color=auto'
alias sl='nyancat'
alias kls='nyancat'
alias tcdn='ssh root@admin-log1'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
export JAVA_HOME=/opt/jdk
export EDITOR=vim

fmt_time () { #just the way I like it
    date +"%H:%M"|sed 's/ //g'
}

read_only (){
    if [ -w "$(pwd)" ]; then
         echo ""
    else
         local RED="\033[0;31m"
         local DEFAULT="\033[0;39m"
         echo -e "${RED}[RO!!]${DEFAULT}"
    fi
}
# PROMPT
export GIT_PS1_SHOWDIRTYSTATE=1
prompt_command () {
    local CYAN="\[\033[0;36m\]"
    local BCYAN="\[\033[1;36m\]"
    local BLUE="\[\033[0;34m\]"
    local GRAY="\[\033[0;37m\]"
    local DKGRAY="\[\033[1;30m\]"
    local WHITE="\[\033[1;37m\]"
    local RED="\[\033[0;31m\]"
    local GREEN="\[\033[0;32m\]"
    local DEFAULT="\[\033[0;39m\]"
    if [ $? -eq 0 ]; then # set an error string for the prompt, if applicable
        ERRPROMPT=""
    else
        ERRPROMPT="-> ($?) "
    fi
#    source /usr/local/etc/bash_completion.d/git-completion.bash
    if [ "\$(type -t __git_ps1)" ]; then # if we're in a Git repo, show current branch
        BRANCH="\$(__git_ps1 ' (%s)')"
    fi
    if [ -w "\$(pwd)" ]; then
        READONLY=""
    else
        READONLY="${RED}[RO!!]${DEFAULT}"
    fi
    TIME="\$(date +"%H:%M"|sed 's/ //g')" # format time for prompt string
    local LOAD=`uptime | awk '{min=NF-2; print $min}'`
    local TITLEBAR='\[\e]2;`pwd`\a'
    export PS1="${WHITE}[${TIME}] ${GREEN}\u${GRAY}@${GREEN}\h${DKGRAY}${DEFAULT}:${RED}$ERRPROMPT${GRAY}\w${WHITE}${BRANCH}${DEFAULT}\$(read_only)$ "
    # Record each line as it gets issued
    PROMPT_COMMAND='history -a'
}
PROMPT_COMMAND=prompt_command
 
alias to-do="grep -rn '//TODO' | sed 's%\(^[^:]*:[^:]*\):.*//TODO. \(.*\)%\2 (\1)%'" #VER LOS TODO; por resolver
#basico:
alias connected="ping www.google.com"
LC_ALL="en_US.UTF-8"
LANGUAGE="en_US.UTF-8"
alias img=/home/diego/scripts/term_display.sh
alias ip_publica="curl ip.appspot.com"
#Parece que han arreglado esto y se han cargado otra cosa: si lo arrancas con esto, peta al tocar los bordes de la pantalla.
#alias google-chrome="google-chrome --force-device-scale-factor" #CAGO EN GOOGLE

# h4xx0rr tricks!!
shopt -s autocd
shopt -s dirspell
shopt -s cdspell
# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
#PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[  ]*:exit:ls:bg:fg:history"

# Useful timestamp format
HISTTIMEFORMAT='%F %T '

export PATH=/opt/ffmpeg/bin:/home/diego/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/diego/.vimpkg/bin
