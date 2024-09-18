source ~/.config/fish/functions/aliases.fish
set -g theme_display_hostname yes
set -g theme_display_user yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme dracula
set -g -x PATH /DATA/plataforma/leroymerlin/bin $PATH /usr/sbin /opt/node/bin /home/dsuarez/.cargo/bin /opt/python3/bin /home/dsuarez/.local/bin
set -g -x TERM xterm-256color
set -g -x MATTERMOST_TEAM_NAME "Transparent Edge"
set -g -x MATTERMOST_URL "cotorras.transparentedge.eu"
set -g -x MATTERMOST_USERNAME "dsuarez"
set -g -x MATTERMOST_PASSWORD "tr4nsparent."
set -g -x MATTERMOST_PORT 443
#status --is-interactive; and . (pyenv init -|psub)
#status --is-interactive; and . (pyenv virtualenv-init -|psub)
umask 0002
