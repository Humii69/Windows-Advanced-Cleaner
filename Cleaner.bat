@echo off
title Windows Advanced Cleaner
color a

:: Temporary Files Cleanup
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%

:: Prefetch Files Cleanup
del /s /f /q C:\WINDOWS\Prefetch

:: Network Configuration
ipconfig /release
TIMEOUT 2 /nobreak
ipconfig /renew
TIMEOUT 2 /nobreak
ipconfig /flushdns

:: Miscellaneous Cleanup
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\prefetch
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
cls