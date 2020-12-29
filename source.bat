@ECHO off

.\content\pies\version.py
set /p version=<".\content\info\version.txt"

:greeting
set ms= null
title Newten %version% -=- By: Mr.North
echo [31m-[35m1[31m- [35mIP Logger
echo [31m-[35m2[31m- [35mIP Pinger
echo [31m-[35m3[31m- [35mLog View
echo [31m-[35m4[31m- [35mpScan
echo [31m-[35m5[31m- [35mPort Scanner
echo [31m-[35m6[31m- [35mClear
echo [31m-[35m7[31m- [35mUpdate Newten
echo [31m-[35m8[31m- [35mExit
echo [31m-[35m9[31m- [35mDelete Log
echo [31m-[35m10[31m- [35mFix Updater
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
if %ms% == 10 goto fixer
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
echo [36mnewten/pinger-$ [34m Enter the IP you want to ping
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

:fixer
echo [36mnewten/fixer-$ [34mStarting con-test.bat
.\fixer\con-test.bat
echo [36mnewten/fixer/complete-$ [34mUpdater was Fixed
goto menu


