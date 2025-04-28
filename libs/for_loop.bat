:: /l -> Loops through a sequence of numbers
:: /f -> Loops through the output of a command
:: /d -> Loops through directories

@echo off

echo Looping through numbers 1 to 5:

:: (1,1,5) -> Start at 1, increment by 1, and stop at 5.
for /l %%i in (1,1,5) do (
    echo %%i 
)


:: Nested Loops
:: !result! -> The exclamation marks enable delayed variable expansion, so the result is updated correctly within the loop.
echo Nested for loops (multiplying numbers):
for /l %%i in (1,1,3) do (
    for /l %%j in (1,1,3) do (
        set /a result=%%i*%%j
        echo %%i * %%j = !result!
    )
)

pause