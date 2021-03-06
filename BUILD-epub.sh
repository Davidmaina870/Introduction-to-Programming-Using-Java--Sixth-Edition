#!/bin/bash

# THIS SCRIPT BUILDS JAVANOTES AS AN EPUB EBOOK AND AS A MOBI EBOOK

# To build the MOBI version, you must get the kindlegen program from
# amazon.com and set the following variable to refer to that program.
# If you don't want to generate the MOBI version, comment out this line.

KINDLEGEN='/home/eck/KindleGen/kindlegen'

# VARIABLES USED IN THIS SCRIPT CAN BE SET IN BUILT-env.sh; see that file
# for more information.

source BUILD-env.sh

# can't do anything if user hasn't set up xalan, so check that first.

if [ ! -f $XALAN_DIR/xalan.jar ] ; then
   echo Cannot find the xalan.jar file in $XALAN_DIR
   echo Cannot proceed without xalan.
   echo Did you set up Xalan-J correctly?  See README.txt.
   exit 1
fi

XALAN_COMMAND="$JAVA_COMMAND -cp $XALAN_DIR/xalan.jar:$XALAN_DIR/serializer.jar:$XALAN_DIR/xercesImpl.jar:$XALAN_DIR/xml-apis.jar org.apache.xalan.xslt.Process"

function copyfiles() {
   for f in `ls -1 $1` ; do
       ext="${f##*.}"
#       ext="${ext,,}"
       if [ "$ext" = "gif" -o "$ext" = "jpg" -o "$ext" = "jpeg" -o "$ext" = "png" ] ; then
          cp $1/$f $2
       fi
   done
}

echo
echo Building epub...

cd $JAVANOTES_SOURCE_DIR

echo in directory `pwd`

rm -rf epub

echo
echo Creating directory epub in $JAVANOTES_SOURCE_DIR...

if ! cp -r epub-files epub ; then
   echo "Error: could not create epub!"
   exit 1
fi

echo
echo Running Xalan to create epub files...

if  $XALAN_COMMAND -xsl convert-epub.xsl -in javanotes6-epub.xml ; then

   if [ ! -e "epub/OEBPS/javanotes6.opf" ] ; then
      echo Some error occurred while running xalan; epub/OEBPS/javanotes6.opf not created
      exit 1
   fi
   if [ ! -d "epub/OEBPS/c1" ] ; then
      echo Some error occurred while running xalan; epub/OEBPS/c1 not created
      exit 1
   fi
   
   echo
   echo Copying other files...

   cp javanotes-epub.css epub/OEBPS
   cp javanotes6-cover-518x675.jpg epub/OEBPS
   copyfiles overview epub/OEBPS/c1
   copyfiles basics epub/OEBPS/c2
   copyfiles control epub/OEBPS/c3
   copyfiles subroutines epub/OEBPS/c4
   copyfiles OOP epub/OEBPS/c5
   copyfiles GUI1 epub/OEBPS/c6
   copyfiles arrays epub/OEBPS/c7
   copyfiles robustness epub/OEBPS/c8
   copyfiles recursion epub/OEBPS/c9
   copyfiles generics epub/OEBPS/c10
   copyfiles IO epub/OEBPS/c11
   copyfiles threads epub/OEBPS/c12
   copyfiles GUI2 epub/OEBPS/c13
   
   if [ ! -e "$BUILD_OUTPUT_DIR" ] ; then
      mkdir $BUILD_OUTPUT_DIR
   fi
   
   cd epub
   zip -X -Z store javanotes6.zip mimetype
   zip -Z store -r javanotes6.zip META-INF
   zip -r javanotes6.zip OEBPS
   cd ..

   if ! mv epub/javanotes6.zip $BUILD_OUTPUT_DIR/javanotes6.epub ; then
      echo Epub successfully generated, but could not be moved to $BUILD_OUTPUT_DIR.
      echo The work directory can be found in $JAVA_SOURCE_DIR/epub
      exit 1
    fi
    
   echo
   echo "BUILD-epub.sh completed."
   echo "Created javanotes6.epub in $BUILD_OUTPUT_DIR."
   echo
   
   if [ -x "$KINDLEGEN" ]; then
      echo
      echo Converting EPUB to MOBI with kindlegen
      echo
      cd $BUILD_OUTPUT_DIR
      $KINDLEGEN javanotes6.epub 
      if [ -f "javanotes6.mobi" ]; then
         echo
         echo Finished EPUB and MOBI ebook generation.
      else
         echo
         echo EPUB was created successfully, but MOBI could not be created.
      fi
   else
      echo
      echo Skipping conversion of EPUB to MOBI because kindlegen executable not found.
   fi
   
   exit 0
   
else
   echo
   echo "An error occurred while trying to run xalan on convert-epub.xsl."
   exit 1
fi





