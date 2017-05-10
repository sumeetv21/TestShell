#!/bin/bash
file="/file/to/path/abc.txt"
items=( "x" "y" "z" )
for i in "${items[@]}"
do
	printf "%s" "$i = " && grep -o $i $file | wc -w
		
done
