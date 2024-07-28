#!/bin/bash

touch task5.txt

echo 'Hello World' >> task5.txt
echo 'Lorem Ipsum Verb' >> task5.txt

while IFS= read -r line; do
	echo "$line" | rev
done < task5.txt
