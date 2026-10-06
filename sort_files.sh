#!/usr/bin/env bash 

read -p "Write here directory or /: " dir

if [ -d "$dir" ]; then
	 ls -lhS "$dir" | head -10

else 
	echo "Not correct"
fi
