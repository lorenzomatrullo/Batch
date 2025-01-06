@echo off
title Advanced Cleaner by Lorenzo


:: Check for Administrator Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    color 0C
    for /L %%i in (5,-1,1) do (
        cls
        echo You must run this script as Administrator!
        echo Closing in %%i seconds...
        timeout /t 1 >nul
    )
    exit /b
)


cls
color 0B


:: Clean temporary files and directories
echo Cleaning Temporary files and folders...
rd /s /q "%temp%" >nul 2>&1 & md "%temp%" >nul 2>&1
rd /s /q "%windir%\Prefetch" >nul 2>&1 & md "%windir%\Prefetch" >nul 2>&1

echo Cleaning D3DSCache...
rd /s /q "%localappdata%\D3DSCache" >nul 2>&1 & md "%localappdata%\D3DSCache" >nul 2>&1

echo Cleaning CrashDumps...
rd /s /q "%localappdata%\CrashDumps" >nul 2>&1 & md "%localappdata%\CrashDumps" >nul 2>&1

echo Cleaning SquirrelTemp...
rd /s /q "%localappdata%\SquirrelTemp" >nul 2>&1 & md "%localappdata%\SquirrelTemp" >nul 2>&1

echo Cleaning Cache...
rd /s /q "%localappdata%\cache" >nul 2>&1 & md "%localappdata%\cache" >nul 2>&1

echo Clearing Windows Update Cache...
rd /s /q "%windir%\SoftwareDistribution\Download" >nul 2>&1 & md "%windir%\SoftwareDistribution\Download" >nul 2>&1
rd /s /q "%windir%\SoftwareDistribution\PostRebootEventCache.V2" >nul 2>&1 & md "%windir%\SoftwareDistribution\PostRebootEventCache.V2" >nul 2>&1

echo Cleaning Windows Cache...
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Caches" >nul 2>&1 & md "%USERPROFILE%\AppData\Local\Microsoft\Windows\Caches" >nul 2>&1

echo Flushing DNS...
ipconfig /flushdns >nul 2>&1

echo Running Disk Cleanup...
cleanmgr /sageset:1 /sagerun:1 >nul 2>&1

echo Emptying Recycle Bin...
rd /s /q %systemdrive%\$Recycle.Bin >nul 2>&1

echo Running Cached RAM Cleanup...
"%USERPROFILE%\Documents\EmptyStandbyList.exe"


:: Finish
echo [32mCleaning completed![0m
echo.
pause