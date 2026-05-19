# Windows Cleaner

Simple batch script that cleans several Windows history traces automatically.

Created by Leeyiers

# Features
Cleans Run history (Win + R)
Removes RecentDocs
Deletes recent files from shell:recent
Clears Quick Access history in File Explorer
Restarts Windows Explorer automatically

# Usage
Download or create the .bat file
Right click the file
Run as Administrator

# What gets cleaned
HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU
HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs
%APPDATA%\Microsoft\Windows\Recent
AutomaticDestinations
CustomDestinations

# Notes
Windows Explorer will restart automatically after cleaning
Some files may require administrator privileges
Made for Windows 10 / Windows 11

# Author
Leeyiers
