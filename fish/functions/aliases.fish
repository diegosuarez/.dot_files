function tcdn --description 'alias tcdn="ssh root@admin-log1"'
    ssh root@172.20.0.1 $argv
end

function ip_publica --description 'alias ip_publica="curl https://api.ipify.org;echo"'
    curl https://api.ipify.org;echo
end

function ls --wraps ls --description 'alias ls=ls -larth'
    command ls -larth --color=auto $argv
end
