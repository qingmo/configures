#!/bin/bash

tmuxconfig=".tmux.conf"

if [ ! -e "${tmuxconfig}" ]
then
	echo "Warnning ${tmuxconfig} not exist"
fi

cp "${tmuxconfig}" ~/
git clone https://github.com/erikw/tmux-powerline.git ~/.tmux-powerline
cp ./default.sh ~/.tmux-powerline/themes/default.sh
if [ `grep "export TERM=\"screen-256color\"" ~/.bashrc | wc -l` -ne 1 ]
then
	echo "set terminal color to 256"
	echo "export TERM=\"screen-256color\"" >> ~/.bashrc
	echo "export TMUX_POWERLINE_SEG_NOW_PLAYING_MUSIC_PLAYER=\"rhythmbox\"" >> ~/.bashrc
else
	echo "256 color set"
fi
sed -i 's/TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT="%F"/TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT=\"%a:%y\/%m\/%d[%H:%M]\"/g' ~/.tmux-powerline/segments/date.sh
sed -i 's/echo \"ⓛ ${lan_ip-N\/a}\"/echo \"${lan_ip-N\/a}\"/g' ~/.tmux-powerline/segments/lan_ip.sh
