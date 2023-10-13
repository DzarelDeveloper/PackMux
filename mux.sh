#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

function clearScreen {
    clear
    echo -e "${YELLOW}  ██████╗  █████╗  ██████╗██╗  ██╗███╗   ███╗██╗   ██╗██╗  ██╗"
    echo -e "  ██╔══██╗██╔══██╗██╔════╝██║ ██╔╝████╗ ████║██║   ██║╚██╗██╔╝"
    echo -e "  ██████╔╝███████║██║     █████╔╝ ██╔████╔██║██║   ██║ ╚███╔╝ "
    echo -e "  ██╔═══╝ ██╔══██║██║     ██╔═██╗ ██║╚██╔╝██║██║   ██║ ██╔██╗ "
    echo -e "  ██║     ██║  ██║╚██████╗██║  ██╗██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗"
    echo -e "  ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝${NC}"
    echo -e "${YELLOW}==============================================================${NC}"
}

function showMenu {
    clearScreen
echo -e "${YELLOW}SILAHKAN PILIH OPSI:${NC}"
    echo -e "${RED}1. INSTALL PACKAGE${NC}"
    echo -e "${RED}2. INSTALL PIP${NC}"
    echo -e "${RED}3. INSTALL ALL${NC}"
    echo -e "${RED}4. Keluar${NC}"
    read -p "Masukkan pilihan: " choice
    case $choice in
        1) installpackage ;;
        2) installPip ;;
        3) installAll ;;
        4) exit 0 ;;
        *) echo -e "${RED}Pilihan tidak valid, silakan coba lagi.${NC}" && showMenu ;;
    esac
}

function installpackage {
    clearScreen
    echo -e "${YELLOW}Mengupdate PACKAGE...${NC}"
    pkg update -y
    echo -e "${YELLOW}Mengupgrade PACKAGE...${NC}"
    pkg upgrade -y
    echo -e "${YELLOW}Menginstall PKG  PYTHON...${NC}"
    pkg install python -y
    pkg install python2 -y
    echo -e "${YELLOW}Menginstall PKG GIT...${NC}"
    pkg install git
    echo -e "${YELLOW}Menginstall PKG BASH...${NC}"
    pkg install bash
    echo -e "${YELLOW}Menginstall PKG FIGLET...${NC}"
    pkg install figlet
    echo -e "${YELLOW}Menginstall PKG NANO...${NC}"
    pkg install nano
    echo -e "${YELLOW}Menginstall PKG MC...${NC}"
    pkg install mc
    echo -e "${YELLOW}Menginstall PKG RUBY...${NC}"
    pkg install ruby
    echo -e "${YELLOW}Menginstall PKG CMATRIX...${NC}"
    pkg install cmatrix
    echo -e "${YELLOW}Menginstall PKG WGET...${NC}"
    pkg install wget
    echo -e "${YELLOW}Menginstall PKG PHP...${NC}"
    pkg install php
    echo -e "${YELLOW}Menginstall PKG COWSAY...${NC}"
    pkg install cowsay
    echo -e "${YELLOW}Menginstall PKG CURL...${NC}"
    pkg install curl
    echo -e "${YELLOW}Menginstall PKG W3M...${NC}"
    pkg install w3m
    echo -e "${YELLOW}Menginstall PKG TOILET...${NC}"
    pkg install toilet
    echo -e "${GREEN}DONE! INSTALASI PACKAGE BERHASIL.${NC}"
    sleep 2
}


function installPip {
    clearScreen
    echo -e "${YELLOW}Menginstall PIP REQUEST...${NC}"
    pip install requests
    echo -e "${YELLOW}Menginstall PIP MECHANIZE...${NC}"
    pip install mechanize
    echo -e "${YELLOW}Menginstall PIP COLORAMA...${NC}"
    pip install colorama
    echo -e "${YELLOW}Menginstall PIP LOLCAT...${NC}"
    pip install lolcat
    echo -e "${GREEN}DONE! INSTALASI PIP PACKAGE BERHASIL.${NC}"
    sleep 2
}

function installAll {
    clearScreen
    installpackage
    installPip
    echo -e "${GREEN}DONE! SEMUA PAKET BERHASIL TERINSTALL..${NC}"
    sleep 2
}
clearScreen
showMenu