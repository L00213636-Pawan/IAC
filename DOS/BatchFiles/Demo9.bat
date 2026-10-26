:: Batch file to display success or failure 
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26JAN26
:: Filename: Demo9.bat

@echo off
cls
title Pawan's Error level tester v.2
echo *******************************************
echo This batch file will show both success and failure results by using "&&" and "||".
echo This is for demonstration purposes only.
echo *******************************************

SET ospath=C:\Windows\
SET filename1=explorer.exe
SET filename2=DoesNotExist.exe
copy %ospath%%filename1% %TEMP% && echo Copy of %filename1% worked!
echo.
echo.
copy %ospath%%filename2% %TEMP% || echo Copy of %filename2% failed!