@ECHO off

:main
ping -n 1 www.google.com >nul
.\updater\stream.py
