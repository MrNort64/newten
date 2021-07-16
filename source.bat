@ECHO off

if not exist ".\content\temp" mkdir ".\content\temp"

echo import base64>".\content\pies\encode-b64.py"
echo import os>>".\content\pies\encode-b64.py"
echo f = open("./content/temp/eb64-tmpf.txt", "r")>>".\content\pies\encode-b64.py"
echo data = f.read()>>".\content\pies\encode-b64.py"
echo encoding = base64.b64encode(data.encode("utf-8"))>>".\content\pies\encode-b64.py"
echo encoded = str(encoding, "utf-8")>>".\content\pies\encode-b64.py"
echo os.system("echo [36mnewten/menu/eb64/encoded-$ [92m" + encoded)>>".\content\pies\encode-b64.py"

echo import os>".\content\pies\decode-b64.py"
echo import base64>>".\content\pies\decode-b64.py"
echo try:>>".\content\pies\decode-b64.py"
echo     f = open("./content/temp/db64-tmpf.txt", "r")>>".\content\pies\decode-b64.py"
echo     data = f.read()   >>".\content\pies\decode-b64.py"
echo     fdata = base64.b64decode(data).decode('utf-8')>>".\content\pies\decode-b64.py"
echo     os.system("echo [36mnewten/menu/eb64/encoded-$ [92m" + fdata)>>".\content\pies\decode-b64.py"
echo except:>>".\content\pies\decode-b64.py"
echo     os.system("echo [36mnewten/menu/eb64/encoded-$ [91mUnable to decode data")>>".\content\pies\decode-b64.py"

title Verifying MultiCloud
echo [32m-} Powered By MultiCloud {-
timeout /t 2 >nul

.\content\pies\version.py
set /p version=<".\content\info\version.txt"
if not exist ".\content\info\update_available.vbs" echo x=msgbox("A new update is available",64,"Newten Updater")>".\content\info\update_available.vbs"

:legacy
if not exist ".\content\info\legacy_version.txt" echo %version%>.\content\info\legacy_version.txt
set /p legacy_version=<".\content\info\legacy_version.txt"
if not %version% == %legacy_version% WScript ".\content\info\update_available.vbs"

:greeting
set /a ms= null
title Newten %legacy_version% -=- By: Carbon
cls
echo [31m-[35m1[31m- [35mIP Logger
echo [31m-[35m2[31m- [35mIP Pinger
echo [31m-[35m3[31m- [35mLog View
echo [31m-[35m4[31m- [35mpScan
echo [31m-[35m5[31m- [35mPort Scanner
echo [31m-[35m6[31m- [35mClear
echo [31m-[35m7[31m- [35mUpdate Newten
echo [31m-[35m8[31m- [35mExit
echo [31m-[35m9[31m- [35mDelete Log
echo [31m-[35m10[31m- [35mDiscord
echo [31m-[35m11[31m- [35mFree Stressers
echo [31m-[35m12[31m- [35mHack The Box Code
echo [31m-[35m13[31m- [35m1.1.1.1 Pinger
echo [31m-[35m14[31m- [35mPatch Notes
echo [31m-[35m15[31m- [35mSource Code
echo [31m-[35m16[31m- [35mOpen Source Code
echo [31m-[35m17[31m- [35mEncode to Base64
echo [31m-[35m18[31m- [35mDecode from Base64
echo.
goto menu

:menu
set /p ms= [36mnewten/menu-# [34m
if %ms% == 1 goto ipLogger
if %ms% == 2 goto pinger
if %ms% == 3 goto logView
if %ms% == 4 goto pScan
if %ms% == 5 goto PortScanner
if %ms% == 6 goto clear
if %ms% == 7 goto updater
if %ms% == 8 exit
if %ms% == 9 goto logDelete
if %ms% == 10 goto discord
if %ms% == 11 goto freeStressers
if %ms% == 12 goto hacktheboxcode
if %ms% == 13 goto 1ping
if %ms% == 14 goto patchNotes
if %ms% == 15 goto sourceCode
if %ms% == 16 goto osc
if %ms% == 17 goto eb64
if %ms% == 18 goto db64
echo [36mnewten/menu/error-$ [34m%ms% is not a valid menu option
goto menu

:ipLogger
echo [36mnewten/iplogger-$ [34mEnter the log name
set /p log-name= [36mnewten/iplogger/name-# [34m
if exist ".\content\logs\%log-name%.txt" echo [36mnewten/iplogger/error-$ [34mThere is already a log with that name
if exist ".\content\logs\%log-name%.txt" goto menu
echo [36mnewten/iplogger-$ [34mEnter the IP you are logging
set /p log-content= [36mnewten/iplogger/content-# [34m
echo Name: %log-name% - IP: %log-content% >>".\content\logs\%log-name%.txt"
if not exist ".\content\logs\%log-name%.txt" echo [36mnewten/iplogger/error-$ [34mThere was an error creating your log
if not exist ".\content\logs\%log-name%.txt" goto menu
echo [36mnewten/iplogger/complete-$ [34mThe log %log-name% was created
goto menu

:logView 
echo [36mnewten/logview-$ [34mEnter the name of the log you want to view
set /p vlog-name= [36mnewten/logview/log-# [34m
if not exist ".\content\logs\%vlog-name%.txt" echo [36mnewten/logview/error-$ [34mThere is no log with the name of %vlog-name%
if not exist ".\content\logs\%vlog-name%.txt" goto menu
set /p log-data=<".\content\logs\%vlog-name%.txt"
echo [36mnewten/logview/logdata$ [34m%log-data%
goto menu

:pinger
echo [36mnewten/pinger-$ [34mEnter the IP you want to ping
set /p ip= [36mnewten/pinger/ip-# [34m
if not exist ".\content\animations\pinger.cmd" echo [36mnewten/pinger/error-$ [34mpinger.cmd is broken or missing
if not exist ".\content\animations\pinger.cmd" goto menu
start cmd /c ".\content\animations\pinger.cmd"
echo [36mnewten/pinger/start-$ [34mNow pinging %ip%
goto menu

:pScan
echo [36mnewten/pscan-$ [34mStarting pScan.exe
if not exist ".\content\exes\pScan.exe" echo [36mnewten/pscan/error-$ [34mpScan.exe is broken or missing
if not exist ".\content\exes\pScan.exe" goto menu
start /d ".\content\exes" pScan.exe >nul
echo [36mnewten/pscan-$ [34mpScan.exe was started
goto menu

:PortScanner
echo [36mnewten/portscanner-$ [34mStarting Port-Scanner.exe
if not exist ".\content\exes\Port-Scanner.exe" echo [36mnewten/portscanner/error-$ [34mPort-Scanner.exe is broken or missing
if not exist ".\content\exes\Port-Scanner.exe" goto menu
start /d ".\content\exes" Port-Scanner.exe >nul
echo [36mnewten/portscanner-$ [34mPort-Scanner.exe was started
goto menu

:clear
cls 
goto greeting

:updater
echo [36mnewten/updater-$ [34mStarting con-test.bat
if not exist ".\updater\con-test.bat" echo [36mnewten/updater/error-$ [34mcon-test.bat is broken or missing
if not exist ".\updater\con-test.bat" goto menu
.\content\pies\version.py
set /p nVersion=<".\content\info\version.txt"
echo %nVersion%>".\content\info\legacy_version.txt"
.\updater\con-test.bat
echo [36mnewten/updater/complete-$ [34mUpdate Installed
goto menu

:logDelete
echo [36mnewten/logdelete-$ [34mEnter the log name you want to delete
set /p dlog-name= [36mnewten/logdelete/log-# [34m
if not exist ".\content\logs\%dlog-name%.txt" echo [36mnewten/logdelete/error-$ [34mA log with the name %dlog-name% does not exist
if not exist ".\content\logs\%dlog-name%.txt" goto menu
echo [36mnewten/logdelete/start-$ [34mDeleting %dlog-name%.txt
del ".\content\logs\%dlog-name%.txt"
echo [36mnewten/logdelete/done-$ [34mLog %dlog-name%.txt was deleted
goto menu

:discord
echo [36mnewten/discord-$ [34;4mhttps://discord.gg/HX2sbyXGuj[0m
goto menu

:freeStressers
echo [36mnewten/freestressers-$ [34m
echo [1;4;32mFREE BOOTERS[0m
echo [32mhttps://www.stressthem.to/ - BEST[1Gbps] [300/s]
echo https://instant-stresser.com/ - BEST[1-3Gbps] [120/s]
echo https://freeboot.is/ BEST[1-2 Gbps] [90/s]
echo https://thestresser.com/ - BEST[200/s]
echo https://criticalsecurity.to/ - [5Gbps] [40/s]
echo https://venomstress.ru/ - [60/s]
echo https://boot4free.co/ - [1-2Gbps] [60/s]
echo https://exitus.in/index.php/free/ - [60/s]
echo https://xdos-s.tech/ - [1Gbps] [30/s]
echo https://meteor-security.to/ - [1Gbps] [60/s]
echo https://meteor-stresser.to/ - [1Gbps] [60/s]
echo https://www.ipstresser.com/ - [200Mbps] [300/s]
echo https://topbooter.net/ - [120/s][0m
goto menu

:hacktheboxcode
echo [36mnewten/htbc-$ [34mNewten has no valid method to hack the box new method will be worked on
goto menu

:htby
echo [36mnewten/htbc/option/yes-$ [34mStarting your default browser
start https://www.base64decode.org/
echo [36mnewten/htbc/option/yes-$ [34mStarted
goto menu

:1ping
set ip=1.1.1.1
if not exist ".\content\animations\pinger.cmd" echo Pinger.cmd is missing or broken && goto menu
start cmd /c ".\content\animations\pinger.cmd"
goto menu

:patchNotes
echo [36mnewten/menu/patch_notes-# [34m
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/patch_notes-# [91mPatch Notes Unavailable
if errorlevel == 1 goto menu
curl https://raw.githubusercontent.com/MrNort64/newten/main/pn.txt
echo.
goto menu

:sourceCode
echo [36mnewten/menu/sourceCode-$ [34m[4mhttps://github.com/MrNort64/newten[0m
goto menu

:osc
echo [36mnewten/menu/sourceCode-$ [34mStarting your default browser
start https://github.com/MrNort64/newten
if errorlevel == 1 echo [36mnewten/menu/sourceCode-# [91mError opening source code
goto menu

:eb64
set /p data=[36mnewten/menu/eb64/input-# [34m 
echo %data%>".\content\temp\eb64-tmpf.txt"
.\content\pies\encode-b64.py
del ".\content\temp\eb64-tmpf.txt"
echo [36mnewten/menu/eb64-$ [34mYour data was encoded
goto menu

:db64
set /p data=[36mnewten/menu/db64/input-# [34m
echo %data%>".\content\temp\db64-tmpf.txt"
.\content\pies\decode-b64.py
echo [36mnewten/menu/eb64/input-$ [34mYour data was decoded
goto menu
