@echo off
title Fully shutting down Windows...
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
color 0B
echo #######################################
echo Thanks for using Baron's Pure Shutdown!
echo #######################################
echo:
cd &temp%
del /q &temp&
echo Cleaning Temp Folder..
echo:
del /s /q %systemdrive%\$Recycle.bin
echo Emptying Recycling Bin...
echo:
killtask /f /t /im explorer.exe
echo Closing All Active Windows...
echo:
shutdown.exe /f /s /t 00
exit