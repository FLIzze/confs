gp() {
        git add . && git commit -m "$1" && git push
}

jump() {
        local selection
        selection=$(find "$HOME/Documents/" -mindepth 1 -type f -o -type d | fzf)  

        if [[ -d "$selection" ]]; then
                cd "$selection" || return
        elif [[ -f "$selection" ]]; then
                nvim "$selection"  
        fi
}
bind -x '"\C-f": jump'

rnasm() {
        filename="${1%.asm}"  

        nasm -f elf64 "$filename.asm" -o "$filename.o"
        ld "$filename.o" -o "$filename"
        ./"$filename"
}

alias d="docker"

alias forum="~/tmux_forum.sh"
alias ia="ssh bob@192.178.10.2"
