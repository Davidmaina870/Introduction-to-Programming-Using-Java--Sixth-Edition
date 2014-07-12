<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:java="http://xml.apache.org/xalan/java"
        extension-element-prefixes="java">

<xsl:output method="text"/>
   
<xsl:template match="text()">
</xsl:template>
    
<xsl:template match="sourceref">
   <xsl:variable name="filename"><xsl:value-of select="concat('source/',@href)"/></xsl:variable>
   <xsl:value-of select="concat($filename,'&#10;')"/>
   <xsl:variable name="f" select="java:java.io.File.new($filename)"/>
   <xsl:if test="not(java:exists($f))">
        <xsl:message>Undefined ref to <xsl:value-of select="@href"/></xsl:message>
   </xsl:if> 
</xsl:template>
   
   
<!-- run in main directory with

   xalan-command -xsl check-sourceref.xsl -in javanotes6.xml -out check-sourceref.tmp
   
where xalan-command is a command for running xalan.


Example:  Define xalan.sh as:

#!/bin/bash
XALAN_DIR="/Users/eck/xalan-j_2_7_1"
XALAN_COMMAND="java -cp $XALAN_DIR/xalan.jar:$XALAN_DIR/serializer.jar:$XALAN_DIR/xercesImpl.jar:$XALAN_DIR/xml-apis.jar org.apache.xalan.xslt.Process" $XALAN_COMMAND -xsl $1 -in $2 -out $3

and use the command

xalan.sh check-sourceref.xsl javanotes6.xml check-sourceref.tmp

   
-->

</xsl:stylesheet>