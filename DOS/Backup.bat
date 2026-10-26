:: Batch script to copy all the files from Data folder to Backups folder by creating the folder with DDMONYY
:: By: PAWAN
:: Initial file: 26OCT26
:: Filename: Backup.bat

@echo off
cls
title Pawan's Backup Script

echo "***************************************************"
echo Creating a dated backup folder inside the Backups by coping files from Data folder.
echo "***************************************************"

:: Setting up the date components
set "DD=%DATE:~0,2%"
set "MM=%DATE:~3,2%"
set "YYYY=%DATE:~8,2%"

:: Convert month number to three letter month name using if statement
if "%MM%"=="01" set "MON=JAN"
if "%MM%"=="02" set "MON=FEB"
if "%MM%"=="03" set "MON=MAR"
if "%MM%"=="04" set "MON=APR"
if "%MM%"=="05" set "MON=MAY"
if "%MM%"=="06" set "MON=JUN"
if "%MM%"=="07" set "MON=JUL"
if "%MM%"=="08" set "MON=AUG"
if "%MM%"=="09" set "MON=SEP"
if "%MM%"=="10" set "MON=OCT"
if "%MM%"=="11" set "MON=NOV"
if "%MM%"=="12" set "MON=DEC"

set "BackupDate=%DD%%MON%%YYYY%"

:: Create the backup folder
if not exist "Backups\%BackupDate%" mkdir "Backups\%BackupDate%"

:: Copy the files inside data folder to Backups folder with correct dated format
xcopy "Data\*.*" "Backups\%BackupDate%\" /I/Y

:: Mark the backup files as read only
attrib +R "Backups\%BackupDate%\*.*" /S

echo.
echo Backup completed: %BackupDate%
pause



