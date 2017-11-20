#!/bin/sh

#check for LaunchAgents folder and make folder if it doesn’t exist
if [!-d mkdir ~/Library/LaunchAgents]; then
    mkdir -p mkdir ~/Library/LaunchAgents;
fi;

#copy LaunchAgent file from /tmp/ to user's library
cp /private/tmp/local.cleanuser.command.plist ~/Library/LaunchAgents/

#Lock the dock!
sudo defaults write com.apple.Dock contents-immutable -bool yes

#pause for write
sleep 5

#Restart Dock
killall Dock

#Set logout after 90 mins
sudo defaults write /Library/Preferences/.GlobalPreferences com.apple.autologout.AutoLogOutDelay -int 5400
sudo defaults write /Library/Preferences/.GlobalPreferences com.apple.securitypref.logoutvalue -int 5400
