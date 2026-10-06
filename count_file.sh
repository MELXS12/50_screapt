#!/usr/bin/env bash

read -p "write directoria or /: " dir
if [  -d "$dir" ]; then 
	echo $( ls -al "$dir" | find -type f | wc -l )
else
	echo "Not correct direcrotoria"
fi	
