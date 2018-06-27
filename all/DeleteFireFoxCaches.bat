@echo off
Title Firefox Cache Cleaner
REM Created by Brian Athans

net session >NUL 2>&1
if %errorlevel% NEQ 0 goto error

cd %AppData%\..\Local\Mozilla\Firefox\Profiles\*.dev-edition-default*\cache2\doomed
echo ----------------------------------------------------------------
echo  Current Directory = %CD%
echo ----------------------------------------------------------------
dir
echo.
echo ----------------------------------------------------------------
for %%x IN ("*") do del %%x && echo %%x deleted
echo.
echo Finished Deleting FireFox-Dev Doomed Cache...
echo.
echo ----------------------------------------------------------------
cd %AppData%\..\Local\Mozilla\Firefox\Profiles\*.dev-edition-default*\cache2\entries
echo ----------------------------------------------------------------
echo  Current Directory = %CD%
echo ----------------------------------------------------------------
dir
echo.
echo ----------------------------------------------------------------
for %%x IN ("*") do del %%x && echo %%x deleted
echo.
echo Finished Deleting FireFox-Dev Entries Cache...
echo ----------------------------------------------------------------

cd %AppData%\..\Local\Mozilla\Firefox\Profiles\*.default\cache2\doomed
echo ----------------------------------------------------------------
echo  Current Directory = %CD%
echo ----------------------------------------------------------------
dir
echo.
echo ----------------------------------------------------------------
for %%x IN ("*") do del %%x && echo %%x deleted
echo.
echo Finished Deleting FireFox Doomed Cache...
echo.
echo ----------------------------------------------------------------
cd %AppData%\..\Local\Mozilla\Firefox\Profiles\*.default\cache2\entries
echo ----------------------------------------------------------------
echo  Current Directory = %CD%
echo ----------------------------------------------------------------
dir
echo.
echo ----------------------------------------------------------------
for %%x IN ("*") do del %%x && echo %%x deleted
echo.
echo Finished Deleting FireFox Entries Cache...
echo ----------------------------------------------------------------

timeout /t 5 >NUL
exit /B

:error
echo This must be run as the Administrator.
echo Now exiting...
echo.
timeout /t 5
