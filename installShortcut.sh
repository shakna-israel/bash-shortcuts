#!/bin/env bash

function checkNewlineChars()
{
	# Append a newline character if one doesn't exist yet.
}

function checkShortcutAppended()
{
	# Check if shortcut already exists in ~/.bashrc
}

function append()
{
	# Only run after checkShortcutAppended, adds the shortcut file to ~/.bashrc
	cat "$1" >> ~/.bashrc
}
