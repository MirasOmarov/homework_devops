#!/bin/bash

mydir=$(pwd)
touch file11.txt
touch file22.txt
mkdir testdir
tar -c -v -f archive.tar file11.txt file22.txt testdir
#tar -t -f archive.tar (check content before unarchiving)
echo "Unarchiving..."
tar -x -v -f archive.tar
#ls -r (extra check after unarchiving)
