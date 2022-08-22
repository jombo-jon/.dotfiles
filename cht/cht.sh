#!/usr/bin/env bash
#****************************************************************************
# * @file        cht.sh
# * @project     Personal
# * @author      Jonathan Hendriks
# * @date        Thu Aug 18 23:38:33 2022 
# * @brief       CheatSheet Wizard
#
# ****************************************************************************/
languages=`echo "vhdl c sh vhdl python golang" | tr ' ' '\n'`
core_utils=`echo "tmux dwm nvim mutt nnn" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`

if [[ "$languages" == *"$selected"* ]]; then
    # Language
    read -p "query: " query
    curl cht.sh/$selected/`echo $query | tr ' ' '+'`
else
    # Core Utils
    tmux neww bash -c "cat ~/.dotfiles/cht/cheatsheets/`echo $selected`.md & while [ : ]; do sleep 1; done"
    # tmux neww bash -c "ls -a & while [ : ]; do sleep 1; done"
fi


