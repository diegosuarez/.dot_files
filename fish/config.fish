source ~/.config/fish/functions/aliases.fish
set -g theme_display_hostname yes
set -g theme_display_user yes
set -g theme_nerd_fonts yes
set -g -x PATH /opt/python/bin /opt/python3/bin /home/diego/transparent/leroymerlin/bin $PATH /opt/node/bin 
set -x PATH "/home/diego/.pyenv/bin" $PATH
#status --is-interactive; and . (pyenv init -|psub)
#status --is-interactive; and . (pyenv virtualenv-init -|psub)
umask 0002
