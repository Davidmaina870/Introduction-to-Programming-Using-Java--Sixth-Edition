@echo off

REM THIS SCRIPT BUILDS THE JAVANOTES WEB SITE.

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

if exist web rmdir/S/Q web

echo.
echo Building web site...
echo.
echo Running Xalan to create web site html files...

%XALAN_COMMAND% -xsl convert-web.xsl -in javanotes6.xml

if %ERRORLEVEL% == 0 (

   echo Copying other web site files...

   copy/Y javanotes.css web > NUL
   copy/Y source\* web\source > NUL
   del web\source\source.xml > NUL
   mkdir web\TextIO_Javadoc
   xcopy/E/S TextIO_Javadoc web\TextIO_Javadoc > NUL
   copy/Y javanotes6-cover-180x235.png web > NUL
   copy/Y news.html web > NUL
   copy/Y news-for-web.html web > NUL
   copy/Y README.txt web\README-full-source.txt

   copy/Y overview\* web\c1 > NUL
   copy/Y basics\* web\c2 > NUL
   copy/Y control\* web\c3 > NUL
   copy/Y subroutines\* web\c4 > NUL
   copy/Y OOP\* web\c5 > NUL
   copy/Y GUI1\* web\c6 > NUL
   copy/Y arrays\* web\c7 > NUL
   copy/Y robustness\* web\c8 > NUL
   copy/Y recursion\* web\c9 > NUL
   copy/Y generics\* web\c10 > NUL
   copy/Y IO\* web\c11 > NUL
   copy/Y threads\* web\c12 > NUL
   copy/Y GUI2\* web\c13 > NUL
   
   del web\c1\*.xml
   del web\c2\*.xml
   del web\c3\*.xml
   del web\c4\*.xml
   del web\c5\*.xml
   del web\c6\*.xml
   del web\c7\*.xml
   del web\c8\*.xml
   del web\c9\*.xml
   del web\c10\*.xml
   del web\c11\*.xml
   del web\c12\*.xml
   del web\c13\*.xml

   if not exist "%BUILD_OUTPUT_DIR%" (
      mkdir "%BUILD_OUTPUT_DIR%"
   ) else (
      if exist "%BUILD_OUTPUT_DIR%/web-site" rmdir/S/Q "%BUILD_OUTPUT_DIR%/web-site"
   )
   
   move web "%BUILD_OUTPUT_DIR%/web-site"

   if "%ERRORLEVEL%" GTR 0 (
      echo Web site successfully generated, but could not be moved to $BUILD_OUTPUT_DIR.
      echo The web site can be found in $JAVA_SOURCE_DIR/web
      popd
      exit/B 1
   )

   echo.
   echo BUILD-web-site.bat completed.
   echo Created Javanotes web site in %BUILD_OUTPUT_DIR%/web-site.
   echo.
   popd
   exit/B 0
) else (
   echo.
   echo An error occurred while trying to run xalan on convert-web.xsl.
   echo Cleaning up and exiting from BUILD-web-site.bat.
   echo.
   if exist web rmdir/S/Q web
   popd
   exit/B 1
)





