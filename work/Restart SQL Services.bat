@echo off
Title Restarting SQL Services
echo ***RUN THIS AS ADMINISTRATOR
echo.
echo ***MAKE SURE TO GET EVERYONE OUT OF OFFICEMATE/EXAMWRITER
echo.
echo Press Any Key to Continue once everyone is out of Officemate
pause > NUL
echo.
echo startping all SQL Services...
echo. 
sc stop MSSQL$OMSQL
sc stop SQLAgent$OMSQL
sc stop MSOLAP$OMSQL
sc stop SQLBrowser
sc stop MsDtsServer100
sc stop ReportServer$OMSQL
sc stop MSSQLFDLauncher$OMSQL
echo.
echo Finished startping all SQL Services...
echo.
echo.
echo Starting All SQL Services...
sc start MSSQLFDLauncher$OMSQL
sc start MSSQL$OMSQL
sc start SQLAgent$OMSQL
sc start MSOLAP$OMSQL
sc start SQLBrowser
sc start MsDtsServer100
sc start ReportServer$OMSQL
echo.
echo Finished Starting All SQL Services...
echo.
echo Press Any key to Exit...
pause > NUL

