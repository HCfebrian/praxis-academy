@ECHO OFF
PowerShell.exe -Command "& '%~dpn0.ps1'"
PAUSE
PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dpn0.ps1'"