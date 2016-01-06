#!/bin/bash

globalconfig="zshrc"
selfconfig=".zshrc"
globaltargetpath="/etc/zsh/"

if [ ! -e "${globalconfig}" ]
then
	echo "Warnning ${globalconfig} not exist"
fi

if [ ! -e "${globaltargetpath}" ]
then
	echo "Warnning ${globaltargetpath} not exist"
	mkdir -p ${globaltargetpath}
fi

cp "${globalconfig}" ${globaltargetpath}

cp "${selfconfig}" ~/
