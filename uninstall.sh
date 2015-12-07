#!/bin/bash

## Undo install (at least trying to)
## This will not undo all, since it is a bit hard
## But this will as much as possible restore the previous state of vim and the terminal


## uninstall rust and cargo
curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh -s -- --yes --uninstall



## restore the backup
mv ~/.vimrc_rustupefy_backup ~/.vimrc 
mv ~/.vim_rustupefy_backup ~/.vim



##Change back the Default Profile of terminal font from command line
gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_system_font --type=boolean true
