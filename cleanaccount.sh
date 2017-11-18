#!/bin/sh
#place this file in /Users/"CURRENTUSER"/Library/LaunchAgents/

#Remove Chrome Files
#rm -r /Users/student/Library/Application\ Support/Google/Chrome/Default

#Copy Fresh Chrome Files
#cp -R /Users/student/Library/Fresh/Default /Users/student/Library/Application\ Support/Google/Chrome/

#Remove all files & folders from current user's desktop
rm -r ~/Desktop/*

#Remove all files & folders from current user's Documents
rm -r ~/Documents/*

#Remove all files & folders from current user's Downloads
rm -r ~/Downloads/*
