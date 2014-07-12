@echo off

REM THIS SCRIPT EXECUTES THE THREE BUILD SCRIPTS BUILD-web-site.bat,
REM BUILD-pdf.bat, AND BUILD-linked-pdf.bat.  The shell variables that
REM are used in those scripts can be set in the BUILD-env.bat script;
REM see that file for more information.

REM This script sends output from the other scripts to /dev/null,
REM and you just see a report on the result.  If an error occurs,
REM you can run the individual script to see the full output
REM from that script.

REM If you are not running the scripts from the directory that
REM contains the scripts, you will have to change SCRIPT_DIR
REM to the directory that contains the scripts.

SET SCRIPT_DIR=%cd%

echo.
echo Running BUILD-web-site.bat...
if exist "%SCRIPT_DIR%\BUILD-web-site.bat" (
   call "%SCRIPT_DIR%\BUILD-web-site.bat" 2> NUL > NUL
   if %ERRORLEVEL% == 0 (
     echo Ran BUILD-web-site.bat successfully.
   ) else (
     echo Error while runing BUILD-web-site.bat.
   )
) else (
   echo Can't find the script!
)

echo.
echo Running BUILD-pdf.bat...
if exist "%SCRIPT_DIR%\BUILD-pdf.bat" (
   call "%SCRIPT_DIR%\BUILD-pdf.bat" 2> NUL > NUL
   if %ERRORLEVEL% == 0 (
     echo Ran BUILD-pdf.bat successfully.
   ) else (
     echo Error while runing BUILD-pdf.bat.
   )
) else (
   echo Can't find the script!
)


echo.
echo Running BUILD-linked-pdf.bat...
if exist "%SCRIPT_DIR%\BUILD-linked-pdf.bat" (
   call "%SCRIPT_DIR%\BUILD-linked-pdf.bat" 2> NUL > NUL
   if %ERRORLEVEL% == 0 (
     echo Ran BUILD-linked-pdf.bat successfully.
   ) else (
     echo Error while runing BUILD-linked-pdf.bat.
   )
) else (
   echo Can't find the script!
)


echo.
if exist "%BUILD_OUTPUT_DIR%" (
   echo Contents of %BUILD_OUTPUT_DIR% after running scripts:
   echo.
   dir "%BUILD_OUTPUT_DIR%"
   echo.
)

