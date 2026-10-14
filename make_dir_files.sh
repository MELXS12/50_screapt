#!/usr/bin/env bash 

read -p "Write directory:" dir
read -p "Write make folders: " folders 
read -p "Write files: " files
if [ -d "$dir" ]; then
	for h in $folders; do
		mkdir $dir/$h
	done

	for l in $files; do 
		touch $dir/$l

	done
else 
	echo "Not correct"
fi
