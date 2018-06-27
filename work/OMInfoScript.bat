@echo off
Title Officemate Info Script
mode con lines=40 cols=100

if exist C:\Users\%username%\AppData\Local\Microsoft\Windows\Omate32.ini (
set TargetPath=C:\Users\%username%\AppData\Local\Microsoft\Windows\Omate32.ini
) ELSE (
if exist C:\Users\BriaAt\AppData\Local\VirtualStore\Windows\Omate32.ini (
set TargetPath=C:\Users\%username%\AppData\Local\VirtualStore\Windows\Omate32.ini
) ELSE (
if exist C:\Windows\Omate32.ini set TargetPath=C:\Windows\Omate32.ini
))
echo Omate32.ini Loading from = %TargetPath%

echo.
echo [system]
REM echo DataDir
type %TargetPath% | find /i "DataDir"
REM echo PgmsDir
type %TargetPath% | find /i "PgmsDir"
REM echo EMCDir
type %TargetPath% | find /i "EMCDir"
REM echo VSPDir
type %TargetPath% | find /i "VSPDir"

echo.
echo [ADOConnection]
REM echo ConnectThru
type %TargetPath% | find /i "ConnectThru"
REM echo Databasename
type %TargetPath% | find /i "Databasename"
REM echo DataSource
type %TargetPath% | find /i "DataSource"

echo.
echo [Install]
REM echo SQL_Build
type %TargetPath% | find /i "SQL_Build"
REM echo Version
type %TargetPath% | find /i "Version"
REM echo Build
type %TargetPath% | find /i "Build"
REM echo ConversionFlag
type %TargetPath% | find /i "ConversionFlag"
REM echo InstalledVersion
type %TargetPath% | find /i "InstalledVersion"
REM echo Service Pack
type %TargetPath% | find /i "Service Pack"

echo.
echo [Auditing]
REM echo ConnectionString
type %TargetPath% | find /i "ConnectionString"

echo.
pause > NUL