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

# to store locally the changes (suppose you want to change the branch, having some uncommited changes in the current branch)
git stash
# or having some meaningful message?
git stash -m "Add new promotion features"
# now you can change your branch, or you can verify from here (to see the list of stashes):
git stash list
# to apply changes
git stash apply
# or 
git stash apply stash@{2}
# to drop the applied changes 
git stash drop

# assume you have a base branch "master" and 2 branches <b1, b2> that are from master, and some commits <a, b, c, d> are pushed to branch b1
# how to have on b2 the commits <a, d> only from b1?
git cherry-pick a
git cherry-pick d

# how to have on b2 the commits <a, b, c> only from b1?
git cherry-pick a^..c
