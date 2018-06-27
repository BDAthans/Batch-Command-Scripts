@echo off
Title Backup UserProfile to Ushare33 folder by Brian Athans
color 0f
mode con: cols=130 lines=40

echo Backups User's Documents Folder to uShare folder (Created by Brian Athans)
echo.

set backupPath=\\SPEOMFS\Ushare33\%username%
set backupData=%userprofile%
set backupFolder=UserData-Backup

REM Get date and time for usage in backupfolder path
FOR /F "skip=1 tokens=1-6" %%G IN ('WMIC Path Win32_LocalTime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
   IF "%%~L"=="" goto setFolder
      Set yyyy=%%L
      Set mm=00%%J
      Set dd=00%%G
      Set hour=00%%H
      Set minute=00%%I
)

:setFolder
Set mm=%mm:~2%
Set dd=%dd:~-2%
Set hour=%hour:~-2%
Set minute=%minute:~-2%


REM Copies to UShare Network Location (Removed /FP which shows full path to files being backed up and /V for verbose output)

robocopy %backupData% %backupPath%\%backupFolder% /S /ZB /COPY:DAT /DCOPY:T /256 /MT:60 /R:100 /ETA /BYTES /W:5 /TEE /LOG+:uShareBackupLog-%mm%-%dd%-%yyyy%.txt /XD git AppData "Application Data" /XF ntuser.*

echo.
echo Backup has completed, Press any key to exit...
pause > NUL

