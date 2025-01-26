@echo off

:: Get the current date and time

for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
echo %datetime%

REM format datetime string to yyyy_MM_dd_hhmmss
set logfilenametime=%datetime:~0,4%_%datetime:~4,2%_%datetime:~6,2%_%datetime:~8,2%_%datetime:~10,2%_%datetime:~12,2%.log
echo %logfilenametime%

echo this is simple log entry >>"logfile_%logfilenametime%

REM python your_script.py >> "%logfilename%" 2>&1

:: redirect both standard output (stdout) and standard error (stderr) to the same place
:: standard error (stderr) to the same location as the standard output

pause