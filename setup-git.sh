#!/bin/bash
#A simple shell script to help a user setup git
#
#Tested under Ubuntu 10.04 64bit
#
#By: James Bucher
#
#Rev: 1.00 --Inital Release July 13, 2010
#Last Edited July 13, 2010

#Get the user's name for git commits
printf "\nEnter a name for Git Configuration: "
username=""
read username

printf "\nEnter an email for Git Configuration: "
email=""
read email

printf "\nEnter an editor to use: "
editor=""
read editor

printf "\nGit accepts the following as valid merge tools: 
	*kdiff3, 
	*tkdiff, 
	*meld, 
	*xxdiff, 
	*emerge, 
	*vimdiff, 
	*gvimdiff, 
	*ecmerge,
	*opendiff\n"
printf "\nEnter a Diff tool to use: "
difftool=""
read difftool

git config --global merge.tool "$difftool"
git config --global core.editor "$editor"
git config --global user.email "$email"
git config --global user.name "$username"

printf "\nYour configuration is now: \n"
git config --list

#add Autocompletion for git into bash for the user
if ! grep "source /etc/bash_completion.d/git" ~/.bashrc > /dev/null
then
	echo "#Add Autocompletion for git:" >> ~/.bashrc
	echo "source /etc/bash_completion.d/git" >> ~/.bashrc
fi
