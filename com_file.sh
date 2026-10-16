#!/usr/bin/env bash 

read -p " Write here direcrtory: " dir 
read -p " Write here direcrtory: " dir1 
if [ -d "$dir" ] && [ -d "$dir1" ]; then
	comm -23 <( ls "$dir" | sort ) <(ls "$dir1" | sort )
else 
	echo "Not correct"
fi
