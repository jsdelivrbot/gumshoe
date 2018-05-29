# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# some cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias docs='cd ~/Documents'

alias repo='sudo nano /etc/apt/sources.list'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# common tasks
alias upd8='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y autoremove'
alias list='function __ff() { find . -name $*; result=$?; unset -f __ff; return $result; }; __ff'
alias hunt='function __fh() { egrep -irl --include=$2 "($1)" .; result=$?; unset -f __fh; return $result; }; __fh'
alias copy='sudo rsync -avzh --progress'
alias save='sudo rsync -avzh --progress --exclude-from=/var/tmp/ignorelist'
alias give='sudo chown -R'
alias ducks='du -cks * |sort -rn |head -11'
alias get='sudo apt-get install' 
alias fix='sudo apt-get -f install'
alias show='history | grep ' 
alias tops='ps -eaf | grep '
alias del='mv -t ~/.local/share/Trash/files --backup=t'
alias pylibs='cd /usr/local/lib/python2.7/dist-packages/'
alias grab='wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --no-parent --domains'
alias cls='clear'
alias scan='nmap -T4 -A -v'
alias histroy='history | grep '
alias logs='sudo less +F /var/log/messages'
alias download='youtube-dl'
alias chat='irssi -c irc.freenode.net -n $(< /dev/urandom tr -dc A-Za-z0-9 | head -c $(echo $((RANDOM%10+4))))'
alias jobs='sudo service --status-all | grep \+'
alias game='LD_PRELOAD='/usr/$LIB/libstdc++.so.6' DISPLAY=:1 steam'

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map='xargs -n1'

#Start webserver
alias http='python -m SimpleHTTPServer'

# Setup VPN
alias getvpn='wget https://git.io/vpn -O openvpn-install.sh'

#functions
function herd() { find $1 -iname "$2" -exec rsync -avzh "{}" $3 \;; }; 

