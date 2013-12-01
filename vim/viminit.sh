#!/bin/bash
#vim initial bash script

vimarchivefolder="vim.tar.bz2"
vimconfig=".vimrc"

if [ -e "${vimarchivefolder}" ]
	echo "Warnning ${vimarchivefolder} not exist"
fi

if [ -e "${vimconfig}" ]
	echo "Warnning ${vimconfig} not exist"
fi

tar -xvf ${vimarchivefolder} -C ~/
cp "${vimconfig}" ~/

exit
