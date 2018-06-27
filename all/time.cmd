@echo off

w32tm.exe /config /manualpeerlist:"0.north-america.pool.ntp.org 1.north-america.pool.ntp.org 2.north-america.pool.ntp.org" /syncfromflags:manual /reliable:yes /update

pause