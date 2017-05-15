#!/bin/bash
hostname=IP Address
username=Database userName
path="path/for/where/backup/stored "
items=( "a" "b" "c" "d" "e" ) #databse name
for i in "${items[@]}"
do
pg_dump -h $hostname -Fc -o -U $username "$i" > $path/"$i"_$(date +\%d-\%m-\%y-\%H-\%M-\%S).sql.gz		
done
chmod -R 0600 $path
