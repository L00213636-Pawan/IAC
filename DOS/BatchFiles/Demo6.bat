:: Batch file to take arguments at runtime 
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26OCT26
:: Filename: Demo6.bat

@echo off
cls
title pawan's user prompt test
echo *******************************************
echo Welcome 
echo This batchfile demonstrates how user provide a value for an environment variable.
echo The /p command is used to let the user enter a value.
echo *******************************************

set /p NAME=What is your name?
echo Your name is %NAME%