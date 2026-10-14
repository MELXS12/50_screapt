#!/usr/bin/env bash


read -p "Write here directory or file: " dir 

read -p "Write here not rs " notrs

read -p "Write here rs: " rs

if [ -d "$dir" ]; then 
	for h in "$dir"/*."$notrs"; do
	[ -f "$h" ] || continue
	masl="${h%.$notrs}.$rs"
	mv "$h" "$masl"
	done
else
	echo "Not correct"

fi

				
