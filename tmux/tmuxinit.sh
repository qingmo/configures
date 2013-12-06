#!/bin/bash

tmuxconfig=".tmux.conf"

if [ ! -e "${tmuxconfig}" ]
then
	echo "Warnning ${tmuxconfig} not exist"
fi

cp "${tmuxconfig}" ~/
