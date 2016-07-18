##################################
# File Name: Auto_Install.sh
# Author: crowboy
# mail: 007wangqiyi@163.com
# Created Time: Sat 11 Feb 2013 11:07:41 AM CST
###################################
#!/bin/bash

USAGE()
{
    echo "Usage: sudo $0"
    return 0
}

CURRENT_DIR=$HOME
COUNT=3

if [ $CURRENT_DIR = "/root" ];then
    echo "########################################"
    echo "HOME: $CURRENT_DIR"
    echo "[NOTE]: Please not change to root account!"
    echo "########################################"
    echo "########################################"
    USAGE
    echo "########################################"
    exit 1
fi


echo "[1/$COUNT]" 
INSTALL_DIR="/usr/share/vim/vim[0-9][0-9]/" 
if [ -e $INSTALL_DIR ];then 
   sudo cp colors/molokai.vim $INSTALL_DIR/colors
else
    echo "VIM not installed on your operator system."
    exit 1
fi

echo "[2/$COUNT]"

sudo cp -r configure/.vim $CURRENT_DIR/ && sudo cp configure/.vimrc $CURRENT_DIR
if [ $CURRENT_DIR != "/root" ];then
    sudo cp -r configure/.vim /root/ && sudo cp configure/.vimrc /root/
fi

echo "[$COUNT/$COUNT]"
echo "Finish install."
