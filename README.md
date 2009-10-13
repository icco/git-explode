# GIT EXPLODE!

A simple bash script to take a folder and explode it into a repository for each
sub-directory.

## How-To Use

 * step 1: curl -s http://github.com/icco/git-explode/raw/master/git-seperate.sh > git-explosion.sh
 * step 2: chmod +x git-explosion.sh
 * step 3: edit the file git-explosion.sh and change the root_folder to be the repository you are exploding
 * step 4: cp git-explosion.sh /tmp
 * step 5: cd /tmp && mkdir explode && cd explode && mv ../git-explosion.sh .
 * step 6: ./git-explosion.sh

## Warnings
 
 Since this clones, it should be ok, but backups are probably a good idea.

