#!/bin/bash

VERSION='javanotes-6.0.3'
PROJECT='javanotes6-source'

SOURCE_DIR='/Users/eck/eclipse-workspace'
EXPORT_DIR="/Users/eck/Desktop/$VERSION-source"

if [ -x "$EXPORT_DIR" ] ; then
   rm -r $EXPORT_DIR/*
else
   mkdir $EXPORT_DIR
fi

cp -r $SOURCE_DIR/$PROJECT $EXPORT_DIR

cd $EXPORT_DIR

perl -i -p -e 's/\t/   /g' `find . -name "*.java"`
perl -i -p -e 's/<!DOCTYPE.*javanotes6.dtd" *>//' `find . -name "*.xml" -and ! -name "javanotes6*"`
rm -r `find . -name "CVS"`

rm $PROJECT/export-source.sh
mv $PROJECT/BUILD* .
chmod +x BUILD*.sh
cp $PROJECT/README.txt .
cd ..

if [ -x $VERSION-source.zip ] ; then
   rm $VERSION-source.zip
fi

#zip -r $VERSION-source.zip $VERSION-source




