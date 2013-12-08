#!/bin/bash

gitconfig=".gitconfig"

if [ ! -e "${gitconfig}" ]
then
	echo "Warnning ${gitconfig} not exist"
fi

cp "${gitconfig}" ~/
