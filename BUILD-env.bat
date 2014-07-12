@echo off

REM THIS SCRIPT SETS SHELL VARIABLES THAT ARE USED IN THE SCRIPTS
REM BUILD-all.bat, BUILD-web-site.bat, BUILD-pdf.bat, and BUILD-linked-pdf.bat.
REM Variables that already have a value are NOT reset by this script.
REM (Note:  If you need to change values in this script after running it
REM once, you will need to close the command window and open a new one
REM before running it again, to get rid of the previous values.)


REM TOP_DIR is the default directory; other directories are defined
REM in this script relative to TOP_DIR.  By default, it is the
REM directory in which the script is run.

SET TOP_DIR=%CD%


REM JAVANOTES_SOURCE_DIR is the directory that contains all the source
REM files from which the web site and PDF files will be built.

IF NOT DEFINED JAVANOTES_SOURCE_DIR SET JAVANOTES_SOURCE_DIR=%TOP_DIR%\javanotes6-source



REM BUILD_OUTPUT_DIR is the directory where the output of the build
REM process will be placed, if the build succeeds.

IF NOT DEFINED BUILD_OUTPUT_DIR SET BUILD_OUTPUT_DIR=%TOP_DIR%\build_output



REM XALAN_DIR is a directory that contains all the jar files that
REM are needed to run the xalan XSLT processor.  A standard xalan2 download
REM should work.  The jar files are: xalan.jar, serializer.jar, 
REM xercesImpl.jar, and xml-apis.jar.  (To use the default setup, the
REM TOP_DIR should contain a directory named xalan that contains 
REM these jar files.  A link to a xalan download directory would work.)

IF NOT DEFINED XALAN_DIR SET XALAN_DIR=%TOP_DIR%\xalan



REM JAVA_COMMAND is the command that is used to execute Java programs.

IF NOT DEFINED JAVA_COMMAND SET JAVA_COMMAND=java



REM LATEX_COMMAND is the command that runs latex, part of the TeX typesetting
REM system.  LaTeX is an intermediate step in the production of the PDF files.
REM The default command includes the option "--interaction=batchmode", which
REM prevents latex from printing error messages and from stopping for user 
REM input when an error occurs.  (This surpresses a lot of output from latex!)

IF NOT DEFINED LATEX_COMMAND SET LATEX_COMMAND=latex --interaction=batchmode



REM DVIPDF_COMMAND is the command that runs dvipdf, part of the TeX typesetting
REM system.  This is a step in the production of the PDF files.  If the dvipdf
REM command is not available (which was true for me in the default installation
REM of MikTeX for Windows), then dvips and ps2pdf can be used instead.  If 
REM DVIPDF_COMMAND is set to a non-empty string, then it will be used to create
REM the PDF.  If DVIPDF_COMMAND is "", then DVIPS_COMMAND and PS2PDF_COMMAND
REM will be used instead.

IF NOT DEFINED DVIPDF_COMMAND SET DVIPDF_COMMAND=""
IF NOT DEFINED DVIPS_COMMAND SET DVIPS_COMMAND=dvips
IF NOT DEFINED PS2PDF_COMMAND SET PS2PDF_COMMAND=ps2pdf




REM If KEEP_LATEX is "no", then the LaTeX files, which are created during the
REM production of the PDF files, are discarded.  Changing the values to anything
REM else will cause the LaTeX files to be saved in BUILD_OUTPUT_DIR.

IF NOT DEFINED KEEP_LATEX SET KEEP_LATEX=no


