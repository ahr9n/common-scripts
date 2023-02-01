#!/bin/bash

git clone https://github.com/ahr9n/commands.git

git add .

git commit -m "something"

git status

git push

git pull

git fetch

git branch

# add
git branch last-update

# switch
git checkout last-update

# set the local branch to track the remote branch
git branch --set-upstream-to=origin/last-update last-update

# Undoing last commit (not pushed) to return to the staging area
git reset --soft HEAD~

# For more undo stuff: https://www.nobledesktop.com/learn/git/undo-changes
