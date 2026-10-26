:: Demo batch file to check the error by using operators
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26OCT26
:: Filename: Demo8.bat

@echo off
cls
title Pawan's Error level tester
echo *******************************************
echo This batch file will perform the error check when it tries to copy a file which does not exist.
echo This is for demonstratin of error level checking with the use of IF statement.
echo *******************************************

SET ospath=C:\Windows\
SET filename=DoesNotExist.exe

:: The temp variable is defined globally for every user
Copy %ospath%%filename% %TEMP%

IF %ERRORLEVEL% NEQ 0 (
 echo The error level was %ERRORLEVEL% and that did not work.
)