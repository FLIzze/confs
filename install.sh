#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' 

echo -e "${CYAN}Linking config folders...${NC}"

mkdir -p ~/.config

link_file() {
        local src=$1
        local dst=$2

        if [ -e "$src" ]; then
                ln -sfn "$src" "$dst"
                if [ $? -eq 0 ]; then
                        echo -e "${GREEN}Linked: $dst → $src${NC}"
                else
                        echo -e "${RED}Failed to link: $dst → $src${NC}"
                fi
        else
                echo -e "${YELLOW}Missing source: $src (skipped)${NC}"
        fi
}

link_file "$(pwd)/waybar" "$HOME/.config/waybar"
link_file "$(pwd)/hypr" "$HOME/.config/hypr"
link_file "$(pwd)/nvim" "$HOME/.config/nvim"
link_file "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"
link_file "$(pwd)/.bashrc" "$HOME/.bashrc"
link_file "$(pwd)/.bash_aliases" "$HOME/.bash_aliases"

echo -e "${CYAN}Done.${NC}"
