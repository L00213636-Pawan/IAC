:: Batch file to demonstrate redirection
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26JAN26
:: Filename: Demo10.bat

@echo off
cls
title pawan's simple backup with logging
echo *******************************************
echo This batch file will create a blank log file and redirect the output to it.
echo Once redirected, then it copies the file and appends it to the same file created if it exists.
echo *******************************************

:: Create a blank file or erase it if it already exists
echo *** Demo10 Logfile *** > SimpleBackup.log

SET ospath=C:\Windows\
SET filename1=explorer.exe
SET filename2=DoesNotExist.exe

echo 1. Copying %filename1% >> SimpleBackup.log
copy %ospath%%filename1% %TEMP% >> SimpleBackup.log 2>&1
echo 2. Copying %filename2% >> SimpleBackup.log
copy %ospath%%filename2% %TEMP% >> SimpleBackup.log 2>&1