:: EQU -> Equal to
:: NEQ -> Not equal to
:: LSS -> Less than
:: LEQ -> Less than or equal to
:: GTR -> Greater than
:: GEQ -> Greater than or equal to

@echo off

set number1=5
set number2=10

if %number1% LSS %number2% (
    echo %number1% is less than %number2%.
) else (
    echo %number1% is not less than %number2%.
)
echo.


:: Check if age is between 18 and 30
if %age% GEQ 18 if %age% LEQ 30 (
    echo The age is between 18 and 30.
) else (
    echo The age is NOT between 18 and 30.
)

pause