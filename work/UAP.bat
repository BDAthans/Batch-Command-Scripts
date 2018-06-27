@echo off
Echo Updating User Accounts

net localgroup Administrators /add BriaAt
net localgroup Administrators /add Brian

timeout 2>NUL