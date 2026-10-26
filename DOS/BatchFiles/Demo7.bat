:: Batch file to demonstrate conditional branching 
:: By: PAWAN
:: Based on initial course documented by JOR
:: Initial file: 26JAN26
:: Filename: Demo7.bat

@echo off
cls
title pawan's Find a File
echo *******************************************
echo This batch file will check if the file name is exist in that OS path.
echo This demonstrates the If statement as if the file exist, then it return exists.
echo *******************************************

SET ospath=C:\Windows\
SET filename=githubdesktop.exe

If exist %ospath%%filename% (
    echo %filename% exists
) else (
    echo No file named %filename%
)