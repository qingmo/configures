#!/bin/bash

tmuxconfig=".tmux.conf"

if [ -e "${tmuxconfig}" ]
	echo "Warnning ${tmuxconfig} not exist"
fi

cp "${tmuxconfig}" ~/
