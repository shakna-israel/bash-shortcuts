#!/bin/bash


function defineVariables()
{
	# Take user input and make a variable.
	SHORTCUT=shortcuts/"$1"
	echo "$1"
	echo "$SHORTCUT"
	export $SHORTCUT
}

function checkNewlineChars()
{
	# Append a newline character
	{ cat ~/.bashrc; echo ""; } > ~/.bashrc.new
	cp ~/.bashrc ~/.bashrc.bak
	echo "Backing up ~/.bashrc to ~/bashrc.bak" 
	mv ~/.bashrc.new ~/.bashrc
	echo "Replaced ~/.bashrc with new version."
}

function checkShortcutAppended()
{
	# Check if shortcut already exists in ~/.bashrc
	if grep -q "$Shorcut" ~/.bashrc; then
		echo "Shortcut already exists. Exiting."
		Continue=false
		export $Continue
	else
		echo "Shortcut not found in ~/.bashrc. Proceeding."
		Continue=true
		export $Continue
	fi
}

function append()
{
	# Only run after checkShortcutAppended, adds the shortcut file to ~/.bashrc
	if [ $Continue = true ] ; then
		cat "$Shortcut" >> ~/.bashrc
	fi
}

defineVariables
checkShortcutAppended
checkNewlineChars
append
