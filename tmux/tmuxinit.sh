#!/bin/bash

tmuxconfig=".tmux.conf"

if [ ! -e "${tmuxconfig}" ]
then
	echo "Warnning ${tmuxconfig} not exist"
fi

cp "${tmuxconfig}" ~/
if [ `grep "export TERM=\"screen-256color\"" ~/.bashrc | wc -l` -ne 1 ]
then
	echo "set terminal color to 256"
	echo "export TERM=\"screen-256color\"" >> ~/.bashrc
else
	echo "256 color set"
fi
