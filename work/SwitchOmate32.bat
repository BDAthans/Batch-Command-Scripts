@echo off
Title Switch Omate32.ini

cd C:\Windows

if exist C:\Windows\Omate32-2.ini goto Option1
if exist C:\Windows\Omate32-1.ini goto Option2

:Option1
rename C:\Windows\Omate32.ini Omate32-1.ini
rename C:\Windows\Omate32-2.ini Omate32.ini
echo Omate32.ini Updated!!!
type C:\Windows\Omate32.ini | find /i "DataDir"
type C:\Windows\Omate32.ini | find /i "Databasename"
timeout 4 >NUL
exit /B

:Option2
rename C:\Windows\Omate32.ini Omate32-2.ini
rename C:\Windows\Omate32-1.ini Omate32.ini
echo Omate32.ini Updated!!!
type C:\Windows\Omate32.ini | find /i "DataDir"
type C:\Windows\Omate32.ini | find /i "Databasename"
timeout 4 >NUL
exit /B


