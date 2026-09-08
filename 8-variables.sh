#!/bin/bash

####speical variables####

echo "all args passes to script: $@"
echo "no.of variables passed to script: $#"
echo "script name: $0"
echo "present directory: $PWD"
echo "who is running this script: $USER"
echo "home directory: $HOME"
echo "pid of this script: $$"
sleep 100 &
echo "bacground process id: $!"
