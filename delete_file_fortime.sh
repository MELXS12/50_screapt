#!/usr/bin/env bash

read -p "Write here directory: " dir
read -p "Write here time: " time

if [ -d "$dir" ]; then 
	find "$dir" -name "*.log" -type f -mtime +"$time" -print
else
	echo "Not correct "
fi
