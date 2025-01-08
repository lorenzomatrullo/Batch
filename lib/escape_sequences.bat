:: This is a comment
rem This is comment too


:: Sets the window name of the program
title 1st program

:: Clears the screen.
cls

:: Starts a separate window to run a specified program or command.
start notepad

:: Deletes one or more files.
del filename.txt

:: Calls another batch file from within the current one.
call otherfile.bat

:: Copies files from one location to another.
copy source.txt destination.txt

:: Copies files and directories, including subdirectories.
xcopy source destination /E /I

:: Moves files or renames them.
move file.txt newfolder\

:: Renames files.
rename oldname.txt newname.txt

:: Creates a new directory.
mkdir newfolder
md newfolder

:: Removes an empty directory.
rmdir foldername
rd foldername

:: Pauses the execution of the batch file and waits for the user to press any key to continue
pause

:: Ends the batch file or closes the Command Prompt window.
exit

:: THE PROGRAM MUST INCLUDE pause OR exit TO BE RAN