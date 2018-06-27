@echo off
Title KCLS
taskkill /im code.exe /f

REM taskkill /im CaptureService.exe /f
taskkill /im WCapWListener.exe /f
taskkill /im LoggerServer.exe /f
taskkill /im WcapW32.exe /f
start "" "C:\CaptureService\Screen Capture Module\WcapW32.exe"

REM taskkill /im NwmSvc.exe /f
REM taskkill /im NwmCli.exe /f
REM taskkill /im WakeUpAgt.exe /f


timeout /t 3