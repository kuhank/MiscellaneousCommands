@echo off

set folderpath=E:\PythonCommands\dummyfolder
set logfile="E:\PythonCommands\samplelog.log"

echo. > "%logfile%" 
:: create empty line

echo this is dummyfile >> "%folderpath%\dummy.txt"
echo "dummy file created" >> "%logfile%"

pause

del /q "%folderpath%\*"
:: delete all files in the specified folderpath
echo deleted all files from specified folder >> "%logfile%"

pause 

:: create a subfolder
mkdir "%folderpath%\myfolder1"
echo subfolder created >> "%logfile%"

pause

::create files in the subfolder
echo dummyfile >> "%folderpath%\myfolder1\dummy.txt"
echo dummy file created in subfolder >> "%logfile%"

pause

:: delete subfolder file
rd /s /q "%folderpath%\myfolder1"
echo subfolder deleted >> "%logfile%"

pause

echo Script ended at date = %date% and time = %time% >> "%logfile%"