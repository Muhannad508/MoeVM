#!/bin/bash


print_status() {
    echo
    echo "## $1"
    echo
}

if test -t 1; then # if terminal
    ncolors=$(which tput > /dev/null && tput colors) # supports color
    if test -n "$ncolors" && test $ncolors -ge 8; then
        termcols=$(tput cols)
        bold="$(tput bold)"
        underline="$(tput smul)"
        standout="$(tput smso)"
        normal="$(tput sgr0)"
        black="$(tput setaf 0)"
        red="$(tput setaf 1)"
        green="$(tput setaf 2)"
        yellow="$(tput setaf 3)"
        blue="$(tput setaf 4)"
        magenta="$(tput setaf 5)"
        cyan="$(tput setaf 6)"
        white="$(tput setaf 7)"
    fi
fi


print_bold() {
    title="$1"
    text="$2"

    echo
    echo "${red}================================================================================${normal}"
    echo "${red}================================================================================${normal}"
    echo
    echo -e "  ${bold}${yellow}${title}${normal}"
    echo
    echo -en "  ${text}"
    echo
    echo "${red}================================================================================${normal}"
    echo "${red}================================================================================${normal}"
}


bail() {
    echo 'Error executing command, exiting'
    exit 1
}

exec_cmd_nobail() {
    echo "+ $1"
    bash -c "$1"
}

exec_cmd() {
    exec_cmd_nobail "$1" || bail
}

install_pkg() {
    PKG="$1"
     print_status " ${bold} Installing ${PKG} ..."
    exec_cmd "apt-get install -y ${PKG}"
     print_status "${bold}${green} ${PKG} has been installed"

}

setup_node() {
PRE_INSTALL_PKGS=""

# Using Debian, as root
#exec_cmd 'curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -'
exec_cmd 'curl -sL https://deb.nodesource.com/setup_lts.x | bash -'

PRE_INSTALL_PKGS="nodejs"
exec_cmd "apt-get install -y ${PRE_INSTALL_PKGS}"
 
 print_status "Installing some npm packages..."
npm install -g tldr
npm install -g @vue/cli
npm install -g json-server
npm install -g http-server
}

setup() {


PRE_INSTALL_PKGS=""

# Check that HTTPS transport is available to APT
# (Check snaked from: https://get.docker.io/ubuntu/)

if [ ! -e /usr/lib/apt/methods/https ]; then
    PRE_INSTALL_PKGS="${PRE_INSTALL_PKGS} apt-transport-https"
fi


if [ ! -x /usr/bin/curl ] && [ ! -x /usr/bin/wget ]; then
    PRE_INSTALL_PKGS="${PRE_INSTALL_PKGS} curl"
fi

# Used by apt-key to add new keys

if [ ! -x /usr/bin/gpg ]; then
    PRE_INSTALL_PKGS="${PRE_INSTALL_PKGS} gnupg"
fi

PRE_INSTALL_PKGS="${PRE_INSTALL_PKGS} $PWD/code.deb"
exec_cmd 'curl -L https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64 -o code.deb'

# download chrome
PRE_INSTALL_PKGS="${PRE_INSTALL_PKGS}  $PWD/google-chrome-stable_current_amd64.deb"
exec_cmd 'curl -L -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'


# Populating Cache
print_status "Populating apt-get cache..."
exec_cmd 'apt-get update'

if [ "X${PRE_INSTALL_PKGS}" != "X" ]; then
    print_status "Installing packages required for setup:${PRE_INSTALL_PKGS}..."
    # This next command needs to be redirected to /dev/null or the script will bork
    # in some environments
    exec_cmd "apt-get install -y${PRE_INSTALL_PKGS} > /dev/null 2>&1"
fi

exec_cmd 'snap install cheat'
exec_cmd 'snap install authy --classic'
}

setup
