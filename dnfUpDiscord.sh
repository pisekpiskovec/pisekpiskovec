#!/usr/bin/bash

dnf check-update discord-canary --refresh

if [ $? -eq 100 ]
then
	killall -e DiscordCanary
	pkexec rm -f -r /usr/share/discord-canary/resources/app.asar
	pkexec rm -f -r /usr/share/discord-canary/resources/_app.asar
	pkexec dnf update -y discord-canary
	konsole -e "sudo /home/pisek/Stažené/VencordInstaller-x11"
	/usr/share/discord-canary/DiscordCanary
	exit 0
else
	/usr/share/discord-canary/DiscordCanary
	exit 1
fi

exit 127
