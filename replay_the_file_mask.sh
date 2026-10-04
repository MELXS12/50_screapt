#!/usr/bin/env bash

read -p "You need write here directory or /: " dir
read -p "You need write here what mask you want to replace: " mask

if [ -d "$dir" ]; then
	for h in "$dir"/*.txt; do
		 [ -f "$h" ] || continue 
		 new_file="${h%.txt}.$mask"
		 mv "$h" "$new_file"
	done
else
	echo "Not correct directory"
fi
