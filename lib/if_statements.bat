@echo off

:: Check if the variable "var" equals 10
set var=10

if %var%==10 (
    echo The value of var is 10.
) else (
    echo The value of var is NOT 10.
)
echo.


:: Check if a file exists
set filename=example.txt

if exist %filename% (
    echo The file "%filename%" exists.
) else (
    echo The file "%filename%" does not exist.
)
echo.


::Use "if defined" to check if a variable is set
set name=

if defined name (
    echo The "name" variable is defined.
) else (
    echo The "name" variable is not defined.
)


pause