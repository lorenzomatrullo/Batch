:: Turn echoing on to display commands
echo on
echo Now, the batch commands will be visible.

:: This disables the command echo to make the batch file cleaner
@echo off

:: Simple echo command
echo Hello, this is a simple echo statement!

:: Echo with a new line (using a line break)
echo This is the first line. 
echo.
echo This is the second line.

:: Echo text wil be shown in the file instead of being written in the console log
:: Make sure to have the right WRITE and READ permissions to the folders according
echo This will be saved in a file > %userprofile%\Desktop\Batch\scripts

:: Echo with appending to a specific path
echo This will be appended to the same file >> %userprofile%\Desktop\Batch\scripts

:: Echo with colors (using ANSI escape codes in compatible terminals)
echo [31mThis text will appear red[0m

pause