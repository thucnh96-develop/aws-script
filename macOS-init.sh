#!/bin/bash
USERNAME="ec2-user"
PASSWORD="Admin123"
sudo sysadminctl -addUser $USERNAME -password $PASSWORD -admin
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users $USERNAME -privs -all -restart -agent -menu
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/MacOS/ARDAgent
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/MacOS/ARDAgent
75HLJ-G9HPQ-KLJCT-M26JT-AJU89 
sudo passwd ec2-user
Admin123
