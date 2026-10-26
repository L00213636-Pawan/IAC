:: Batch file to demonstrate variables
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26OCT26
:: Filename: Demo4.bat

@echo off
cls
title Pawan's variable test
echo *******************************************
echo This demo is about the variables which used to make the batchfiles readable and reusable.
echo This demonstrate the variable once set it remain set for the batchfiles until it finished.
echo *******************************************

echo *** About to do something critical ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause 

SETLOCAL

SET clonepath=V:\Clone of Windows 11 x64 GOLD-Client\
SET clonename=Win 11 Dev-26OCT26.vmx
echo Path to Clone is %clonepath%%clonename%

SET /A calculation=2+12/4
echo We got %calculation%

ENDLOCAL

EXIT