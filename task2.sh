#!/bin/bash

mkdir task2_copy_from #dlya testa
mkdir task2_copy_to

cd task2_copy_from
touch file1.txt
touch file2.txt
cd ..

cp ./task2_copy_from/*.txt ./task2_copy_to #"$directory_path1"/*.txt "$directory_path2" esli nado s path

cd task2_copy_from #print vse txt file v copy_from (copy_to mojet imet drugie txt file ne v copy_from)
ls *.txt
cd ..
