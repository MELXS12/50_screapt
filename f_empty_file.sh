#!/usr/bin/env bash

read -p "Write here directory or /: " dir 

if [ -d "$dir" ]; then
	find "$dir" -empty -type f
else
	echo "Not correct"
fi
