@ECHO off

if not exist ".\content\temp" mkdir ".\content\temp"
if not exist ".\content\batches" mkdir ".\content\batches"
if not exist ".\content\info\mail_addr.txt" echo example@projectn.com>".\content\info\mail_addr.txt"
if not exist ".\content\info\mail_pass.txt" echo Pa55w0rd>".\content\info\mail_pass.txt"
if not exist ".\content\nodes" mkdir ".\content\nodes"

echo npm install kahoot-spammer>".\content\batches\kahootpy.cmd"

echo @ECHO off>".\content\batches\mailbomber.cmd"
echo title Mail Spammer>>".\content\batches\mailbomber.cmd"
echo .\content\pies\mailspam.py>>".\content\batches\mailbomber.cmd"
echo pause>>".\content\batches\mailbomber.cmd"

echo import urllib.request>".\content\pies\intallmailspam.py"
echo import os>>".\content\pies\intallmailspam.py"
echo try:>>".\content\pies\intallmailspam.py"
echo     updateURL = "https://raw.githubusercontent.com/MrNort64/newten/main/pies/mailspam.py">>".\content\pies\intallmailspam.py"
echo     sourceCodeGet = urllib.request.urlopen(updateURL)>>".\content\pies\intallmailspam.py"
echo     sourceCode = sourceCodeGet.read()>>".\content\pies\intallmailspam.py"
echo     f = open('./content/pies/mailspam.py', 'w')>>".\content\pies\intallmailspam.py"
echo     f.write(sourceCode.decode())>>".\content\pies\intallmailspam.py"
echo     f.close()>>".\content\pies\intallmailspam.py"
echo except:>>".\content\pies\intallmailspam.py"
echo 	 os.system("echo [91mError interacting with mailspam.py")>>".\content\pies\intallmailspam.py"

echo @echo off>".\content\batches\kahootf.cmd"
echo title Spamming>>".\content\batches\kahootf.cmd"
echo echo [36mnewten/menu/kahootflood-$ [34mSpamming!>>".\content\batches\kahootf.cmd"
echo node .\content\nodes\kahootflood.js>>".\content\batches\kahootf.cmd"
echo pause >nul

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
echo     os.system("echo [36mnewten/menu/db64/encoded-$ [92m" + fdata)>>".\content\pies\decode-b64.py"
echo except:>>".\content\pies\decode-b64.py"
echo     os.system("echo [36mnewten/menu/db64/encoded-$ [91mUnable to decode data")>>".\content\pies\decode-b64.py"

echo @echo off>".\content\batches\chatfeed.cmd"
echo title Chat Feed from Project North>>".\content\batches\chatfeed.cmd"
echo :top>>".\content\batches\chatfeed.cmd"
echo curl https://deepsmp.online/chatfeed.txt>>".\content\batches\chatfeed.cmd"
echo timeout /t 3 >nul >>".\content\batches\chatfeed.cmd"
echo cls>>".\content\batches\chatfeed.cmd"
echo goto top>>".\content\batches\chatfeed.cmd"

echo import smtplib>".\content\pies\mailer.py"
echo import os>>".\content\pies\mailer.py"
echo try:>>".\content\pies\mailer.py"
echo     f = open("./content/info/mail_addr.txt", "r")>>".\content\pies\mailer.py"
echo     maddr = f.read()>>".\content\pies\mailer.py"
echo     f = open("./content/info/mail_pass.txt", "r")>>".\content\pies\mailer.py"
echo     mpass = f.read()>>".\content\pies\mailer.py"
echo     server = smtplib.SMTP_SSL("smtp.gmail.com", 465)>>".\content\pies\mailer.py"
echo     server.login(maddr, mpass)>>".\content\pies\mailer.py"
echo     f = open("./content/temp/msendt_tmpf.txt", "r")>>".\content\pies\mailer.py"
echo     i = open("./content/temp/msend-msg_tmpf.txt", "r")>>".\content\pies\mailer.py" 
echo     server.sendmail(maddr, f.read(), i.read())>>".\content\pies\mailer.py"
echo     server.quit()>>".\content\pies\mailer.py"
echo     os.system("echo [36mnewten/menu/mailsender-$ [92mEmail sent!")>>".\content\pies\mailer.py"
echo except:>>".\content\pies\mailer.py"
echo     os.system("echo [36mnewten/menu/mailsender-$ [91mEmail failed!")>>".\content\pies\mailer.py"

title Verifying MultiCloud
echo [32m-} Powered By MultiCloud {-
echo.
if not exist "C:\Program Files\nodejs" echo [91mError Node.js was not found some features may not work properly!
if exist "C:\Program Files\nodejs" echo [92mNode.js installation confirmed!
if not exist "C:\Windows\py.exe" echo [91mError Python was not found some features may not work properly! & timeout /t 1 >nul
if exist "C:\Windows\py.exe" echo [92mPython installation confirmed! & timeout /t 1 >nul
timeout /t 1 >nul
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [91mNetwork Error
ping -n 1 www.google.com >nul
if errorlevel == 1 timeout /t 1 >nul
ping -n 1 www.google.com >nul
if errorlevel == 1 goto greetinga

.\content\pies\version.py
set /p version=<".\content\info\version.txt"
echo x=msgbox("A new update is available; use menu option 7 to install it",64,"Newten Updater")>".\content\info\update_available.vbs"
.\content\pies\intallmailspam.py

:legacy
if not exist ".\content\info\legacy_version.txt" echo %version%>.\content\info\legacy_version.txt
set /p legacy_version=<".\content\info\legacy_version.txt"
if not %version% == %legacy_version% WScript ".\content\info\update_available.vbs"

:greeting
set /a ms= null
title Newten %legacy_version% -=- By: Carbon
ping -n 1 www.google.com >nul 
if errorlevel == 1 set /p lv=<".\content\info\legacy_version.txt"
if errorlevel == 1 title Newten %lv% -=- By: Carbon
cls
echo [31m-[35m1[31m- [35mIP Logger			[31m-[35m21[31m- [35mDiscord Chat Feed
echo [31m-[35m2[31m- [35mIP Pinger			[31m-[35m22[31m- [35mTest Connection
echo [31m-[35m3[31m- [35mLog View			[31m-[35m23[31m- [35mMail Sender
echo [31m-[35m4[31m- [35mpScan			[31m-[35m24[31m- [35mSet Email Profile
echo [31m-[35m5[31m- [35mPort Scanner		[31m-[35m25[31m- [35mView Mail Credidentials
echo [31m-[35m6[31m- [35mClear			[31m-[35m26[31m- [35mCyber Hub
echo [31m-[35m7[31m- [35mUpdate Newten		[31m-[35m27[31m- [35mDiagnose Newten
echo [31m-[35m8[31m- [35mExit			[31m-[35m28[31m- [35mKahoot Flooder
echo [31m-[35m9[31m- [35mDelete Log			[31m-[35m29[31m- [35mInstall kahoot-spammer	
echo [31m-[35m10[31m- [35mDiscord			[31m-[35m30[31m- [35mRequired Programs
echo [31m-[35m11[31m- [35mFree Stressers		[31m-[35m31[31m- [35mFlood Last Kahoot Game
echo [31m-[35m12[31m- [35mHack The Box Code		[31m-[35m32[31m- [35mVedbex
echo [31m-[35m13[31m- [35m1.1.1.1 Pinger		[31m-[35m33[31m- [35mMail Bomber
echo [31m-[35m14[31m- [35mPatch Notes		[31m-[35m34[31m- [35mResend Last Email Bomb
echo [31m-[35m15[31m- [35mSource Code		[31m-[35m35[31m- [35mPing Last Logged IP
echo [31m-[35m17[31m- [35mEncode to Base64		[31m-[35m36[31m- [35mPing Last Pinged IP
echo [31m-[35m18[31m- [35mDecode from Base64
echo [31m-[35m19[31m- [35mFAQ
echo [31m-[35m20[31m- [35mIP Look-up
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
if %ms% == 19 goto faq
if %ms% == 20 goto ipl
if %ms% == 21 goto discordchat
if %ms% == 22 goto testcon
if %ms% == 23 goto mailsender
if %ms% == 24 goto mailset
if %ms% == 25 goto mailcreds
if %ms% == 26 goto cyberhub
if %ms% == 27 goto diagnose
if %ms% == 28 goto kahootflood
if %ms% == 29 goto installkp
if %ms% == 30 goto requirep
if %ms% == 31 goto floodlastk
if %ms% == 32 goto vedbex
if %ms% == 33 goto mailbomb
if %ms% == 34 goto sendleb
if %ms% == 35 goto pingllip
if %ms% == 36 goto pinglpip
echo [36mnewten/menu/error-$ [34m%ms% is not a valid menu option
goto menu

:ipLogger
if not exist ".\content\logs" mkdir ".\content\logs" & echo [36mnewten/iplogger-$ [92mLogs folder created because it was [91mmissing
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
echo %log-content%>".\content\temp\llip_tmpf.txt"
ping -n 1 %log-content% >nul
if errorlevel == 1 echo [36mnewten/menu/iplogger/complete-$ [91mWARNING! New logged IP did not respond!
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
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/pinger-$ [91mNetwork Error! & goto menu
echo [36mnewten/pinger-$ [34mEnter the IP you want to ping
set /p ip= [36mnewten/pinger/ip-# [34m
if not exist ".\content\animations\pinger.cmd" echo [36mnewten/pinger/error-$ [34mpinger.cmd is broken or missing
if not exist ".\content\animations\pinger.cmd" goto menu
start cmd /c ".\content\animations\pinger.cmd"
echo %ip%>".\content\temp\lpip_tmpf.txt"
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
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/discord-$ [91mNetwork Error! & goto menu
echo [36mnewten/discord-$ [34;4mhttps://discord.gg/HX2sbyXGuj[0m
start https://discord.gg/HX2sbyXGuj
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
echo [36mnewten/htbc-$ [34mHack the box no longer requires you to hack yourself in
goto menu

:1ping
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/iping-$ [91mNetwork Error! & goto menu
set ip=1.1.1.1
if not exist ".\content\animations\pinger.cmd" echo Pinger.cmd is missing or broken && goto menu
start cmd /c ".\content\animations\pinger.cmd"
goto menu

:patchNotes
echo [36mnewten/menu/patch_notes-$ [34m
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/patch_notes-$ [91mPatch Notes Unavailable
if errorlevel == 1 goto menu
curl https://raw.githubusercontent.com/MrNort64/newten/main/pn.txt
echo.
goto menu

:sourceCode
echo [36mnewten/menu/sourceCode-$ [34m[4mhttps://github.com/MrNort64/newten[0m
goto menu

:osc
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/sourceCode-$ [91mNetwork Error! & goto menu
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
echo [36mnewten/menu/db64/input-$ [34mYour data was decoded
goto menu

:faq
echo [36mnewten/menu/faq-# [34m
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/faq-$ [91mFAQ Unavailable
if errorlevel == 1 goto menu
echo.
curl https://raw.githubusercontent.com/MrNort64/newten/main/faq.txt
echo.
goto menu

:ipl
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/ip-lookup-$ [91mNetwork Error! & goto menu
set /p ip=[36mnewten/menu/ip-lookup/ip-# [34m
echo [36mnewten/menu/ip-lookup/response-$ [34mTraced Info.[92m
curl http://ipinfo.io/%ip%/json
echo.
goto menu

:discordchat
echo [36mnewten/menu/discord-chatfeed-$ [34mTesting Connection to Server
ping -n 1 deepsmp.online >nul
if errorlevel == 1 echo [36mnewten/menu/discord-chatfeed-$ [91mUnavailable
ping -n 1 deepsmp.online >nul
if errorlevel == 1 goto menu
echo [36mnewten/menu/discord-chatfeed-$ [92mServer Available... [34mStarting chatfeed.cmd
if not exist ".\content\batches\chatfeed.cmd" echo chatfeed.cmd is missing or broken && goto menu
start cmd /c ".\content\batches\chatfeed.cmd"
goto menu

:testcon
echo [36mnewten/menu/test_connection-$ [34mTesting Connection...
ping -n 1 www.google.com >nul
if errorlevel == 1 goto offl
echo [36mnewten/menu/test_connection-$ [92mConnection Available!
goto menu

:offl
echo [36mnewten/menu/test_connection-$ [91mConnection Unavailable!
goto menu

:mailset
echo [36mnewten/menu/mailset-$ [34mEnter your Email
set /p newaddr=[36mnewten/menu/mailset-# [92m
echo [36mnewten/menu/mailset-$ [34mEnter your Password
set /p newpass=[36mnewten/menu/mailset-# [92m
echo %newaddr%>".\content\info\mail_addr.txt"
echo %newpass%>".\content\info\mail_pass.txt"
echo [36mnewten/menu/mailset-$ [92mNew Credidentials set!
goto menu

:mailsender
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/mailsender-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/mailsender-$ [34mEnter email properties
echo [36mnewten/menu/mailsender-$ [34mEnter Target Email
set /p to=[36mnewten/menu/mailsender/recipiant-# [92m
echo [36mnewten/menu/mailsender-$ [34mEnter the message
set /p msg=[36mnewten/menu/mailsender/msg-# [92m
echo %to%>".\content\temp\msendt_tmpf.txt"
echo %msg%>".\content\temp\msend-msg_tmpf.txt"
echo [36mnewten/menu/mailsender-$ [34mSending your email...
.\content\pies\mailer.py
goto menu

:mailcreds
set /p addr=<".\content\info\mail_addr.txt"
set /p mpass=<".\content\info\mail_pass.txt"
echo [36mnewten/menu/mail_credidentials-$ [34mMail Address: [92m%addr% [34mMail Password: [92m%mpass%
goto menu

:cyberhub
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/cyberhub-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/cyberhub-$ [34mStarting your default browser...
start https://cyber-hub.pw/
goto menu

:diagnose
echo [36mnewten/menu/diagnose-$ [34mPlease wait...
echo [36mnewten/menu/diagnose-$ [34mVarifying file integrity...
set /a x=0
set /a z=0
if not exist ".\content" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/ =- & set /a z=%z%+1
if exist ".\content" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/ =- & set /a x=%x%+1
if not exist ".\content\animations" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/animations/ =- & set /a z=%z%+1
if exist ".\content\animations" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/animations/ =- & set /a x=%x%+1
if not exist ".\content\batches" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/batches/ =- & set /a z=%z%+1
if exist ".\content\batches" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/batches/ =- & set /a x=%x%+1
if not exist ".\content\exes" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/exes/ =- & set /a z=%z%+1
if exist ".\content\exes" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/exes/ =- & set /a x=%x%+1
if not exist ".\content\info" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/info/ =- & set /a z=%z%+1
if exist ".\content\info" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/info/ =- & set /a x=%x%+1
if not exist ".\content\logs" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/logs/ =- & set /a z=%z%+1
if exist ".\content\logs" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/logs/ =- & set /a x=%x%+1
if not exist ".\content\pies" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/pies/ =- & set /a z=%z%+1
if exist ".\content\pies" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/pies/ =- & set /a x=%x%+1
if not exist ".\content\temp" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/temp/ =- & set /a z=%z%+1
if exist ".\content\temp" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/temp/ =- & set /a x=%x%+1
if not exist ".\updater\con-test.bat" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/updater/con-test.bat/ =- & set /a z=%z%+1
if exist ".\updater\con-test.bat" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/updater/con-test.bat/ =- & set /a x=%x%+1
if not exist ".\updater\stream.py" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/updater/stream.py/ =- & set /a z=%z%+1
if exist ".\updater\stream.py" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/updater/stream.py/ =- & set /a x=%x%+1
if not exist ".\updater\temp" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/updater/temp/ =- & set /a z=%z%+1
if exist ".\updater\temp" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/updater/temp/ =- & set /a x=%x%+1
if not exist ".\updater\instants" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/updater/instants/ =- & set /a z=%z%+1
if exist ".\updater\instants" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/updater/instants/ =- & set /a x=%x%+1
if not exist ".\content\nodes" echo [36mnewten/menu/diagnose-$ [91mFile lost! -= newten/content/nodes/ =- & set /a z=%z%+1
if exist ".\content\nodes" echo [36mnewten/menu/diagnose-$ [92mFile Confirmed! -= newten/content/nodes/ =- & set /a x=%x%+1
echo [36mnewten/menu/diagnose-$ [34mResults Ratio...
echo [36mnewten/menu/diagnose-$ [92m%x%[34m:[91m%z%
goto menu

:kahootflood
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/kahootflood-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/kahootflood-$ [34mEnter Game Pin...
set /p gamePin=[36mnewten/menu/kahootflood/pin-# [34m
echo [36mnewten/menu/kahootflood-$ [34mEnter Bot Prefix...
set /p gamePrefix=[36mnewten/menu/kahootflood/prefix-# [34m
echo [36mnewten/menu/kahootflood-$ [34mEnter Number of Bots...
set /p numBots=[36mnewten/menu/kahootflood/bot_amount-# [34m
echo [36mnewten/menu/kahootflood-$ [34mStarting kahootflood.py...
echo try{const KahootSpammer = require('kahoot-spammer')>".\content\nodes\kahootflood.js"
echo const api = KahootSpammer>>".\content\nodes\kahootflood.js"
echo api.spam(%gamePin%, "%gamePrefix%", %numBots%).catch()}catch(error){console.log("[36mnewten/menu/kahootflood-$ [91mError Game Pin Expired!")}>>".\content\nodes\kahootflood.js">>".\content\nodes\kahootflood.js"
start cmd /c ".\content\batches\kahootf.cmd"
echo [36mnewten/menu/kahootflood-$ [92mFinished!
goto menu

:floodlastk
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/kahootflood-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/kahootflood-$ [34mStarting kahootflood.py...
start cmd /c ".\content\batches\kahootf.cmd"
echo [36mnewten/menu/kahootflood-$ [92mFinished!
goto menu

:installkp
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/installkp-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/installkp-$ [34mStarting Installer...
start cmd /c ".\content\batches\kahootpy.cmd"
echo [36mnewten/menu/kahootflood-$ [92mDone!
goto menu

:requirep
echo [36mnewten/menu/requirep-$ [34mHere is a list of required programs for Newten to run properly.
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/requirep-$ [91mYou will not be able to access these links because your connection is unavailable!
echo [36mnewten/menu/requirep-$ [92mhttps://nodejs.org/en/
echo [36mnewten/menu/requirep-$ [92mhttps://www.python.org/
goto menu

:vedbex
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/vedbex-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/vedbex-$ [34mStarting your default browser...
start https://www.vedbex.com/tools/home
goto menu

:mailbomb
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/mailbomb-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/mailbomb-$ [34mEnter target email.
set /p bombLoc=[36mnewten/menu/mailbomb/email_target-# [92m
echo [36mnewten/menu/mailbomb-$ [34mEnter message.
set /p message=[36mnewten/menu/mailbomb/message-# [92m
echo [36mnewten/menu/mailbomb-$ [34mNumber of sendings.
set /p send_num=[36mnewten/menu/mailbomb/send_number-# [92m
if %send_num% == 1 echo [36mnewten/menu/mailbomb-$ [34mSending Email...
if not %send_num% == 1 echo [36mnewten/menu/mailbomb-$ [34mSending Emails...
echo %send_num%>".\content\temp\mbsn_tmpf.txt"
echo %message%>".\content\temp\mbmsg_tmpf.txt"
echo %bombLoc%>".\content\temp\mbbl_tmpf.txt"
start cmd /c ".\content\batches\mailbomber.cmd"
goto menu

:sendleb
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/mailbomb-$ [91mNetwork Error! & goto menu
echo [36mnewten/menu/mailbomb-$ [34mBombing last email!
start cmd /c ".\content\batches\mailbomber.cmd"
goto menu

:pingllip
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/pinger-$ [91mNetwork Error! & goto menu
set /p ip=<".\content\temp\llip_tmpf.txt"
echo [36mnewten/menu/pinger-$ [34mPinging [92m%ip%
start cmd /c ".\content\animations\pinger.cmd"
goto menu

:pinglpip
ping -n 1 www.google.com >nul
if errorlevel == 1 echo [36mnewten/menu/pinger-$ [91mNetwork Error! & goto menu
set /p ip=<".\content\temp\lpip_tmpf.txt"
echo [36mnewten/menu/pinger-$ [34mPinging [92m%ip%
start cmd /c ".\content\animations\pinger.cmd"
goto menu
