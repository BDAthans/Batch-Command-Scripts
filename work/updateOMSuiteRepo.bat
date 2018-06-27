@echo off
Title Git - Update OMSuite Repo

cd %userprofile%\Documents\BrianAthans\Git\

if not exist OMSuite git clone https://BriaAt@git.vspglobal.com/scm/eyeom/omsuite.git OMSuite

if exist OMSuite echo Updating Git Repo 'OMSuite' && cd OMSuite && git pull

echo.
if %errorlevel% NEQ 0 echo Error Thrown - && echo Error level=%errorlevel%
timeout /t 3 > NUL