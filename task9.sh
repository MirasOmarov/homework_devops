#!/bin/bash

file_number=0
dir_number=0

for item in *; do
	if [ -f "$item" ]; then
		((file_number++))
	elif [ -d "$item" ]; then
		((dir_number++))
	fi
done

echo "THere are $file_number files"
echo "There are $dir_number directories"
