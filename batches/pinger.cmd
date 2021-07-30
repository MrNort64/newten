@echo OFF

mode con lines=10 cols=34
set /a ls = 0.01
title %ip%

:load
ping -n 1 %ip% >nul
if errorlevel == 1 goto err
echo [92;7m    %ip%    [0m
goto load

:err
echo [91;7m    %ip%    [0m
goto load
