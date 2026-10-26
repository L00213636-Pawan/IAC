:: Batch file to demonstrate loops 
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26OCT26
:: Filename: Demo11.bat

@echo off
cls
title Pawan's file and directory counter
echo *******************************************
echo This batch file will loop through the current directory and displays each filename that exists.
echo This is for demonstration purposes only.
echo *******************************************

:: Iterate through all the files in the current directory
echo Analysing %CD%
FOR %%I IN (*) DO @ECHO Filename=%%I
echo *******************************************
:: The environment variable USERPROFILE points at the users home folder
echo Analysing %USERPROFILE% for directories
FOR /D %%I IN ("%USERPROFILE%\*") DO @ECHO %%I
echo *******************************************