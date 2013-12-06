#!/bin/bash
#vim initial bash script

vimconfig=".vimrc"

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

if [ ! -e "${vimconfig}" ]
then
	echo "Warnning ${vimconfig} not exist"
fi

#tar -xvf ${vimarchivefolder} -C ~/
cp "${vimconfig}" ~/

exit
