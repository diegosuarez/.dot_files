function tcdn --description 'alias tcdn="ssh root@admin-log1"'
    ssh root@172.20.0.1 $argv
end

function ip_publica --description 'alias ip_publica="curl https://api.ipify.org;echo"'
    curl https://api.ipify.org;echo
end

function ls --wraps ls --description 'alias ls=ls -larth'
    command ls -larth --color=auto $argv
end

function vpn --description 'alias vpn=cd /home/diego/transparent/vpn && openvpn transparent.ovpn'
    cd /home/diego/transparent/vpn
    sudo openvpn transparent.ovpn
end

function mobusivpn --description 'alias mobusivpn=cd /home/diego/servotic/mobusi/vpn && openvpn mobusi.ovpn'
    cd /home/diego/servotic/mobusi/vpn
    sudo openvpn mobusi.ovpn
end

function upgrade --description 'alias upgrade=sudo apt update; and sudo apt upgrade'
    sudo apt update; and sudo apt -y upgrade
end

function api_manage --description 'alias api_manage="DJANGO_SETTINGS_MODULE='config.settings.local' python3 manage.py"'
    set -x DJANGO_SETTINGS_MODULE 'config.settings.local' 
    python3 manage.py $argv
end

function clean_html --description 'alias clean_html=tidy -w 0 -q -i -f /dev/null --indent-spaces 4'
    tidy -w 0 -q -i -f /dev/null --indent-spaces 4;
end

function sl --description "alias sl=nyancat # aprende a escribir"
    nyancat
end
