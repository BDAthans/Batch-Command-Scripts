@echo off

-- if Officemate is running ask to kill it?
-- Check OS version as not to run on the server
-- check for duplicate omate32.ini in virtualStore folder

echo Moving Omate32.ini and Old OM Installations to C:\OldOfficemateInstalls
if not exist C:\OldOfficemateInstalls mkdir C:\OldOfficemateInstalls

if exist C:\Omate32 move C:\Omate32 C:\OldOfficemateInstalls /Y
if exist C:\Officemate move C:\Officemate C:\OldOfficemateInstalls /Y
if exist C:\Windows\Omate32.ini move C:\Windows\Omate32.ini C:\OldOfficemateInstalls /Y

echo.
echo Finished moving Omate32.ini and Old OM Installations to C:\OldOfficemateInstalls
timeout 15 > NUL