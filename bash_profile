################################
#
# functions
#
################################

function get_ip_details() { ifconfig $1 | grep inet | grep -v 'inet6'; }
function reload_profile() { clear; echo "[+] Reloading user profile."; source ~/.bash_profile; }

function better_rm() { exit 0; }


#ifme_check() {
#    old_ip=$(cat $HOME/system-scripts/oldip.txt)
#    ext_ip=$(curl ifconfig.me) 
#    echo $ext_ip >$HOME/system-scripts/oldip.txt)
#    [ $ext_ip != $old_ip ] && { echo "Your external IP has changed from ${old_ip} to ${ext_ip}" ;} || { echo "Your external IP is still the same: ${ext_ip}" ;}
#}


function set_proxy() {
    _url=$1
    export http_proxy=${_url}
    export https_proxy=${_url}
}


function genpasswd() {
    local l=$1
    [ "$l" == "" ] && l=16
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}


################################


alias projects='cd ~/projects'

alias nmap_scripts='cd /usr/local/Cellar/nmap/6.47/share/nmap/scripts'
alias nse='nmap_scripts'

alias httproxy='set_proxy http://0.0.0.0'
alias ifme='curl icanhazip.com'

# file/directory actions

alias ls='ls -G'
alias l='ls -l -G'
alias ll='l -l -G'
alias lll='l -la -G'
alias la='ls -a'
alias lla='ll -a'
alias le='l -e'
alias ..='cd ../'
alias ...='cd ../../'

alias exp='clear; export -p'

alias back='reload_profile'
alias reload='back'

alias hosts='cat /etc/hosts'

alias rd='rm -rf'

# tmux stuff

alias tl='tmux ls'
alias ta='tmux a '

# python

alias ipy='ipython'

# network

alias ipconfig='ifconfig '
alias ip='get_ip_details '

alias connections='cat ~/.ssh/config'

##################################################
#
# Vagrant shit stuff
#
##################################################

alias vgo='cd $HOME/vagrant'
alias vstat='vagrant status'
alias vs='vstat'

alias vall='vagrant global-status'
alias vgstat='vall'

alias vinit='vagrant init'
alias vup='vagrant up'
alias vhalt='vagrant halt'
alias vh='vhalt'

alias vssh='vagrant ssh' 
alias vbox='vagrant box '
alias vlist='vbox list'

 alias <any-other-project>='su - <any-other-project>'


# Python ipython notebook

alias pynb='ipython notebook'


##################################################
#
# homebrew stuff
#
##################################################

alias brews='brew search '
alias brewi='brew install '
alias bs='brew search '
alias bi='brew install '

##################################################
#
# git stuff
#
##################################################

alias gp='git pull'
alias gh='git push '
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
alias gut='git '

alias graph='git log --graph --oneline --all'

alias push='git push'
alias clone='git clone'
alias gcom='git commit -m'

##################################################


export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi
