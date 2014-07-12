@echo off

REM THIS SCRIPT BUILDS THE JAVANOTES PDF FILE (the version without links).

REM VARIABLES USED IN THIS SCRIPT CAN BE SET IN BUILT-env.bat; see that file
REM for more information.


call BUILD-env.bat

if not exist "%XALAN_DIR%"/xalan.jar (
   echo.
   echo Cannot find xalan.jar in the specified Xalan Directory, "%XALAN_DIR%"
   echo Did you download Xalan and set up the directory as described in README.txt?
   echo Cannot proceed without xalan.
   echo.
   popd
   exit/B 1
)

SET XALAN_COMMAND="%JAVA_COMMAND%" -cp "%XALAN_DIR%"/xalan.jar;"%XALAN_DIR%"/serializer.jar;"%XALAN_DIR%"/xercesImpl.jar;"%XALAN_DIR%"/xml-apis.jar org.apache.xalan.xslt.Process

pushd "%JAVANOTES_SOURCE_DIR%"

if exist tex rmdir/S/Q tex
mkdir tex

echo.
echo Building PDF...
echo.
echo Running Xalan to create LaTeX source file...

%XALAN_COMMAND% -xsl convert-tex-linked.xsl -in javanotes6-tex.xml -out tex/javanotes6-linked.tex

if not %ERRORLEVEL% == 0 ( 
   echo.
   echo An error occurred while trying to run xalan on convert-tex.xsl.
   echo Cleaning up and exiting from BUILD-PDF.sh
   echo.
   rmdir/S/Q tex
   popd
   exit/B 1
)

echo Copying other files...

mkdir tex\images
copy/Y images-tex\* tex\images > NUL
copy/Y texmacros.tex tex > NUL

cd tex

echo.
echo Running latex three times...
echo.

%LATEX_COMMAND% javanotes6-linked.tex
%LATEX_COMMAND% javanotes6-linked.tex
%LATEX_COMMAND% javanotes6-linked.tex

if not exist javanotes6-linked.dvi  (
   echo.
   echo An error occurred while trying to run latex on javanotes6.tex.
   echo Exiting from BUILD-PDF.sh; latex files are in %JAVA_SOURCE_DIR%/tex
   echo.
   popd
   exit/B 1
)

echo.
echo Creating PDF file from dvi file...
echo.

if not "%DVIPDF_COMMAND%" == """" (
   "%DVIPDF_COMMAND%" javanotes6-linked.dvi
)
else (
   "%DVIPS_COMMAND%" -Ppdf javanotes6-linked.dvi -o 
   "%PS2PDF_COMMAND%" javanotes6-linked.ps
)

if not exist javanotes6-linked.pdf (
   echo.
   echo An error occurred while trying to run dvipdf on javanotes6.dvi.
   echo Exiting from BUILD-PDF.sh; latex files are in %JAVA_SOURCE_DIR%\tex
   echo.
   popd
   exit/B 1
)

if not exist "%BUILD_OUTPUT_DIR%" (
   mkdir "%BUILD_OUTPUT_DIR%"
)

move javanotes6-linked.pdf "%BUILD_OUTPUT_DIR%"

if %ERRORLEVEL% GTR 0 (
   echo PDF file successfully generated, but could not be moved to %BUILD_OUTPUT_DIR%.
   echo PDF can be found in %JAVA_SOURCE_DIR$\tex
   popd
   exit/B 1
)

echo.
echo BUILD-pdf.sh completed.
echo javanotes6.pdf created in %BUILD_OUTPUT_DIR%

cd ..

if  not "%KEEP_LATEX%" == "no" (
   if exist "%BUILD_OUTPUT_DIR%"\linked-latex-source rmdir/S/Q "%BUILD_OUTPUT_DIR%"\linked-latex-source
   move tex "%BUILD_OUTPUT_DIR%"\linked-latex-source
   echo linked-latex-source created in %BUILD_OUTPUT_DIR%
) else (
   rmdir/S/Q tex
)

echo.
popd
exit/B 0

