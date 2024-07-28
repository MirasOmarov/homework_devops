#!/bin/bash

file_path=$1

if [ ! -f "$file_path" ]; then
	echo "file does not exist"
	exit 1
fi

word_counter=$(wc -w < "$file_path")
echo "$word_counter"
