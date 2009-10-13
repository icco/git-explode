#!/bin/bash

root_folder='/home/nat/school/';

folders=`ls $root_folder`;

for folder in $folders ; do
   git clone -q "$root_folder" "$folder";
   cd ./"$folder";
   echo "Begining to work on `pwd`";
   git filter-branch --subdirectory-filter "$folder" -- --all;
   git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d;
   git reflog expire --expire=now --all;
   git gc --prune=now;
   cd ..;
done;

ls -l .
