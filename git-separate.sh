#!/bin/bash

root_folder='/home/nat/school/';

folders=`ls $root_folder`;

for folder in $folders ; do
   echo "--- $folder";
   git clone -q file://"$root_folder" "$folder";
   cd ./"$folder";
   echo " -- now in `pwd`";
   git filter-branch --subdirectory-filter "$folder" -- --all;
   git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d;
   git reflog expire --expire=now --all;
   git gc -q --prune=now;
   cd ..;
done;

ls -l .
