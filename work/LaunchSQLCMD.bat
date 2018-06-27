@echo off
color 0F
mode con lines=80 cols=170
cd C:\Program Files\Microsoft SQL Server\100\Tools\Binn\
SET SQLCMDPASSWORD=OMateSQL@2007
echo Microsoft (R) SQL Server Command Line Tool
echo Version 10.50.1600.1 NT INTEL X64
echo.
%windir%\system32\CMD.EXE /K "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\SQLCMD.exe" -S localhost\OMSQL -U sa 
