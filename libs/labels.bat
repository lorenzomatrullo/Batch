:: goto = Jumps to a label in the script.

@echo off
echo This is the start of the script.

goto :step2

:step1
echo You are at Step 1.

:step2
echo You are at Step 2.

goto :end

:end
echo The script has ended.

exit