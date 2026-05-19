@echo off
title Windows History Cleaner - By: Leeyiers

color 0A

echo ==========================================
echo        Windows History Cleaner
echo             By: Leeyiers
echo ==========================================
echo.

echo [1/5] Cleaning Run history...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f >nul 2>&1

echo [2/5] Cleaning RecentDocs...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1

echo [3/5] Deleting recent files...
del /f /q "%APPDATA%\Microsoft\Windows\Recent\*" >nul 2>&1

echo [4/5] Cleaning Quick Access history...
del /f /q "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*" >nul 2>&1
del /f /q "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*" >nul 2>&1

echo [5/5] Restarting Windows Explorer...
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo ==========================================
echo         Cleaning Completed
echo             By: Leeyiers
echo ==========================================
pause