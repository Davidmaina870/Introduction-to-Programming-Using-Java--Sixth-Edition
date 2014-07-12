#!/bin/bash

# THIS SCRIPT BUILDS THE JAVANOTES WEB SITE.

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
   cp $1/* $2
   rm $2/*.xml
}

cd $JAVANOTES_SOURCE_DIR

rm -rf web
mkdir web

echo
echo Building web site...
echo
echo Running Xalan to create web site html files...

if  $XALAN_COMMAND -xsl convert-web.xsl -in javanotes6.xml ; then

   echo Copying other web site files...

   cp javanotes.css web
   cp -r source web
   rm web/source/source.xml
   cp -r TextIO_Javadoc web
   cp javanotes6-cover-180x235.png web
   cp news.html web
   cp news-for-web.html web
   cp README.txt web/README-full-source.txt

   copyfiles overview web/c1
   copyfiles basics web/c2
   copyfiles control web/c3
   copyfiles subroutines web/c4
   copyfiles OOP web/c5
   copyfiles GUI1 web/c6
   copyfiles arrays web/c7
   copyfiles robustness web/c8
   copyfiles recursion web/c9
   copyfiles generics web/c10
   copyfiles IO web/c11
   copyfiles threads web/c12
   copyfiles GUI2 web/c13
   
   if [ ! -e "$BUILD_OUTPUT_DIR" ] ; then
      mkdir $BUILD_OUTPUT_DIR
   else
      rm -rf $BUILD_OUTPUT_DIR/web-site
   fi
   
   if [ ! -e "web/index.html" ] ; then
      echo Some error occurred while creating the web site.
      exit 1
   fi
   
   if ! mv web $BUILD_OUTPUT_DIR/web-site ; then
      echo Web site successfully generated, but could not be moved to $BUILD_OUTPUT_DIR.
      echo The web site can be found in $JAVA_SOURCE_DIR/web
      exit 1
    fi

   echo
   echo "BUILD-web-site.sh completed."
   echo "Created Javanotes web site in $BUILD_OUTPUT_DIR/web-site."
   echo
   exit 0
   
else
   echo
   echo "An error occurred while trying to run xalan on convert-web.xsl."
   echo "Cleaning up and exiting from BUILD-web-site.sh"
   echo
   rm -rf web
   exit 1
fi





