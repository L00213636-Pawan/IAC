:: Demo batch file to allow user interrupt 
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26OCTC26
:: Filename: Demo3.bat

@echo off
cls
title Pawan's pause test
echo "*******************************************"
echo This batch file will warn the user before performing critical task
echo This will allow the user to interrupt the automated process if required.
echo "*******************************************"
echo *** About to do something critical ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause