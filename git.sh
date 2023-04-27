#!/bin/bash

git clone https://github.com/ahr9n/commands.git

git add .

git commit -m "something"

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

git status
# On branch last-update
# Your branch is up to date with 'origin/last-update'.
# nothing to commit, working tree clean

# Undoing last commit (not pushed) to return to the staging area
git reset --soft HEAD~
# For more undo stuff: https://www.nobledesktop.com/learn/git/undo-changes

# rebase to get the latest commits from master branch to feature branch
# https://git-scm.com/docs/git-rebase
git rebase master feature
git rebase master 
