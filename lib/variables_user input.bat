@echo off

:: no spacing is necessary to make the variables to be read

:: You assign a value to a variable using set variableName=value.
:: To access the value of the variable, you use %variableName%
set myVar=Hello, Batch World!
echo %myVar%

:: You can perform arithmetic operations using set /a for integer calculations.
set /a result=5+3
echo The result of 5 + 3 is: %result%

:: Modifying Variables
set myVar=Initial Value
set myVar=Updated Value
echo The updated value of myVar: %myVar%

:: Clear Variables
set myVar=
echo The value of myVar after removal: %myVar%


:: User Input
set /p userInput=Please enter your name:
echo Hello, %userInput%!


pause