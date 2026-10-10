#!/usr/bin/env bash

read -p "Write here directoria or /: " dir 

if [ -d "$dir" ]; then 
	dt="$( date +%F )"
	name="${dir##*/}"
	tar -czvf "${name}_$dt.tar.gz" "$dir" 
else
	echo "Not correct"
fi


