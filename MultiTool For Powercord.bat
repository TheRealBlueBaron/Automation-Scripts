@echo off
title Installer of Things
color 0B
echo #########################
echo  MultiTool for Powercord
echo #########################
echo 	By Blue Baron
echo #########################

echo:
echo Note: You cannot have both Powercord and another client mod injected at the same time. If you have one installed,
echo you must first uninstall it from your Discord Canary installation before proceeding to installation.
echo:
start "Grabbing Git..." "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://git-scm.com/downloads"
start "Grabbing NodeJs..." "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://nodejs.org/"
start "Grabbing DiscordCanary..." "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://discord.com/api/download/canary?platform=win"
echo #######################################################################################
echo Install these manually, close discord, then come back to this window and press any key.
echo #######################################################################################
timeout /t -1
cd..
cd..
cd..
git clone https://github.com/powercord-org/powercord
echo:
echo ###################
echo Powercord Finished!
title Powercord Finished!
echo ###################
echo:
cd powercord
call npm i
cd C:\powercord\src\Powercord\plugins
git clone https://github.com/oSumAtrIX/nitro-bypass
git clone https://github.com/GriefMoDz/better-status-indicators
git clone https://github.com/jaimeadf/who-reacted
git clone https://github.com/notsapinho/powercord-animated-status
git clone https://github.com/35e/powercord-keepchat
git clone https://github.com/discord-modifications/show-hidden-channels
git clone https://github.com/discord-modifications/spotify-crack
git clone https://github.com/replugged-org/spotify-modal
git clone https://github.com/discord-modifications/relationships-notifier
git clone https://github.com/Japanese-Schoolgirl/DiscordPlugin-CustomPanelForSendingPictures
echo:
echo #################
echo Plugins Finished!
title Plugins finished!
echo #################
echo:
cd C:\powercord\src\powercord\themes
git clone https://github.com/zerol1ght/chatty-edit
git clone https://github.com/LuckFire/amoled-cord
echo:
echo ################
echo Themes Finished!
title Themes Finished!
echo ################
echo:
cd C:\powercord
call npm run plug
echo:
title Powercord, Plugins, and Themes Updated!
pause
exit 