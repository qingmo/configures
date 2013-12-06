#!/bin/bash

if [ -e vim ]
then
	echo "vim config..."
	cd vim 
	./viminit.sh
	cd ../
else
	echo "vim not exist"
fi

if [ -e tmux ]
then
	echo "tmux config..."
	cd tmux 
	./tmuxinit.sh
	cd ../
else
	echo "tmux not exist"
fi
