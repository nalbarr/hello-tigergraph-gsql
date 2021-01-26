#!/bin/bash

OS_TYPE=`uname`
echo OS_TYPE: $OS_TYPE

if [ $OS_TYPE == 'Linux' ]; then
	# Cloud shell
	echo "Use web preview and set port number"
elif [ $OS_TYPE == 'Darwin' ]; then
	# Mac
	CMD=open
	$CMD http://localhost:14240
else
	# Windows Cygwin
	CMD=cygstart
	$CMD http://localhost:14240
fi
