#!/bin/bash

function link { 
    if [ -e "$1" ]; then
        mkdir -p -- "$(dirname -- "$2")" \
            && ln -T -s -i -- "$(realpath "$1")" "$2"
    else
        echo "\"$1\" does not exist"
    fi
}

# Make expected XDG directories
mkdir -p ~/.public ~/data/{downloads,documents,audio/music,pictures,video}

# Link configuration files to the ones in this repository
link templates                          ~/.templates
link config/gtk2                        ~/.gtkrc-2.0
link config/gtk3                        ~/.config/gtk-3.0/settings.ini
link config/bash_aliases                ~/.bash_aliases
link config/bashrc                      ~/.bashrc
link config/profile                     ~/.profile
link config/Xresources                  ~/.Xresources
link config/xinitrc                     ~/.xinitrc
link config/keynavrc                    ~/.keynavrc
link config/vimrc                       ~/.config/nvim/init.vim
link config/muttrc                      ~/.muttrc
link config/mailcap                     ~/.mailcap
link config/gitconfig                   ~/.gitconfig
link config/sxhkdrc                     ~/.config/sxhkd/sxhkdrc
link config/bspwmrc                     ~/.config/bspwm/bspwmrc
link config/lfrc                        ~/.config/lf/lfrc
link config/zathurarc                   ~/.config/zathura/zathurarc
link config/i3                          ~/.config/i3/config
link config/polybar                     ~/.config/polybar/config
link config/user-dirs.dirs              ~/.config/user-dirs.dirs
