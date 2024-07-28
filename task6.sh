#!/bin/bash

dir_to_backup="task2_copy_from"
dir_backup="task2_copy_to"
curr_path=$(realpath "$0")

curr_date=$(date +"%Y-%m-%d")
for dir in "${dir_to_backup[@]}"; do
	dir_name=$(basename "$dir")
	tar -c -z -f "$dir_backup/${dir_name}_$curr_date.tar.gz" "$dir"
done

echo "Backup Successful! $curr_date"
(crontab -l 2>/dev/null; echo "0 2 * * 1 $curr_path") | crontab - #add script to cron
