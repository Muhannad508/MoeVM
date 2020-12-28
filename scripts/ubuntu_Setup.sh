#!/bin/bash


print_status() {
    echo
    echo "## $1"
    echo
}


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

PRE_INSTALL_PKGS=""

# Using Debian, as root
exec_cmd 'curl -sL https://deb.nodesource.com/setup_lts.x | bash -'
PRE_INSTALL_PKGS="nodejs"
exec_cmd "apt-get install -y ${PRE_INSTALL_PKGS}"
 print_status "Nodejs has been Installed..."


# Populating Cache
# print_status "Populating apt-get cache..."
# exec_cmd 'apt-get update'

 print_status "Installing packages required for setup..."
    # This next command needs to be redirected to /dev/null or the script will bork
    # in some environments
    PRE_INSTALL_PKGS="htop"

    exec_cmd "apt-get install -y ${PRE_INSTALL_PKGS} > /dev/null 2>&1"
