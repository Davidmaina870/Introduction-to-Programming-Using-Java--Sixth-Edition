<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
        xmlns:redirect="org.apache.xalan.xslt.extensions.Redirect"
        extension-element-prefixes="redirect">
<xsl:output method="html"/>
    
<xsl:template match="/">
   <redirect:write file="web/index.html">
        <html>
        <head>
        <title>Javanotes 6.0 -- Title Page</title>
        <link href="javanotes.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
        <div class="content">
        <hr/>
        <h2 class="chapter_title">Introduction to Programming Using Java, Sixth Edition</h2>
        <h2 class="chapter_title">Version 6.0, June 2011</h2>
        <p align="center">
        <small><i>(Version 6.0.3, with minor corrections, January 2014)</i></small>
        </p>
        <h4 align="center">Author:&#160; <a href="http://math.hws.edu/eck/">David J. Eck</a>&#160;
                 (<a href="mailto:eck@hws.edu">eck@hws.edu</a>)</h4>        
        <hr/>
        <table border="0">
        <tr valign="top"><td><p style="margin-right:20pt"><img height="235" width="180" src="javanotes6-cover-180x235.png"/></p></td>
        <td style="margin-left:1cm">
        <p><big>W</big>ELCOME TO 
         the Sixth Edition of <i>Introduction to Programming Using Java</i>,
         a free, on-line textbook on introductory
         programming, which uses Java as the language of instruction.  This book is directed
         mainly towards beginning programmers, although it might also be useful for experienced
         programmers who want to learn something about Java.  It is certainly not meant to
         provide complete coverage of the Java language.
        </p>
        <p>The sixth edition requires Java 5.0 and can also be used with later versions of java.
        Almost all the examples in the book will work with Java 5.0, but some features from later
        versions of Java are also covered.  You will find many Java applets
         on the web pages that make up this book, and most of those applets require
         Java&#160;5.0 or higher to function.  Earlier editions of the book are still available; 
         see the <a href="preface.html">preface</a> for links.
         </p>
         <p>You can <b>download</b>&#160;<i>Introduction to Programming Using Java</i> for use on your
         own computer. 
         PDF, ebook, and print versions are also available.
         Links can be found at the bottom of this page.
         </p>
         <form method="post" action="http://math.hws.edu/cgi-bin/htsearch">
         <p><big><b>Search this Text:</b></big> Although this book does not have a
         conventional index, you can search it for terms that interest you. Note that
         this feature searches the book at its on-line site, so you must be working
         on-line to use it.</p>
         <p>Search <i>Introduction to Programming Using Java</i> for pages...</p>
         <center><select name="method">
         <option value="and">Containing all of these words:</option>
         <option value="or">Containing any of these words:</option></select>
         <input type="text" size="20" name="words" value="" /> 
         <input type="hidden" name="config" value="javanotes6" />
         <input type="submit" value="Search" /></center>
         </form>
        <h3>Short Table of Contents:</h3>
        <ul class="contents">
        <li><b><a href="contents-with-subsections.html">Full Table of Contents</a></b></li>
        <xsl:if test="/javanotes/preface">
           <li><a href="preface.html">Preface</a></li>
        </xsl:if>
        <xsl:for-each select="/javanotes/chapter">
            <li>Chapter <xsl:value-of select="position()"/>: <b><a><xsl:attribute name="href"><xsl:value-of select="concat('c',position(),'/index.html')"/></xsl:attribute><xsl:value-of select="@title"/></a></b></li>
        </xsl:for-each>
        <xsl:if test="/javanotes/source">
           <li><a href="source/index.html">Source Code for All Examples in this Book</a></li>
        </xsl:if>
        <xsl:if test="/javanotes/glossary">
           <li><a href="glossary.html">Glossary</a></li>
        </xsl:if>
        <li><a href="news.html">News</a></li>
        </ul>
        <hr/>
        <blockquote>
         <i>&#169;1996--2014, David J. Eck.<br/>
            <small>This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-Noncommercial-ShareAlike 3.0 License</a>.
            (This license allows you to redistribute this book in unmodified form for non-commercial purposes.  It allows you
            to make and distribute modified versions for non-commercial purposes, as long as you include an attribution to the
            original author, clearly describe the modifications that you have made, and distribute
            the modified work under the same license as the original.  Permission might be given by the
            author for other uses.  See the
            <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/">license</a> for full
            details.)<br/><br/>
            The most recent version of this book is always available, at no
            charge, for downloading and for on-line use at the Web address:
            <a href="http://math.hws.edu/javanotes/">http://math.hws.edu/javanotes/</a></small></i>
          </blockquote>
        <hr/>
        <h3>Downloading And Other Links</h3>
        <ul>
        <li><b><a href="http://math.hws.edu/eck/cs124/downloads/javanotes6.zip">http://math.hws.edu/eck/cs124/downloads/javanotes6.zip</a></b> --
        This "zip" archive contains a complete copy of the web site.  It should be usable on almost
        any computer. 
        (Size:&#160;4.4&#160;Megabytes.)
        </li>
        <li><b><a href="http://math.hws.edu/eck/cs124/downloads/javanotes6.tar.bz2">http://math.hws.edu/eck/cs124/downloads/javanotes6.tar.bz2</a></b> --
        This "bzip2 tar" archive contains a complete copy of the web site in a format that allows greater compression
        but that might not be usable on all computers.  On most UNIX systems, including Linux and Mac OS, you
        should be able to extract it using the command "bunzip2&#160;javanotes6.tar.bz2" followed by
        "tar&#160;xf&#160;javanotes6.tar" on the command line (if it is not extracted automatically when you download it).
        (Size:&#160;3.2&#160;Megabytes.)
        </li>
        <li>
        <b><a href="http://math.hws.edu/eck/cs124/downloads/javanotes6-linked.pdf">http://math.hws.edu/eck/cs124/downloads/javanotes6-linked.pdf</a></b> --
        a PDF version with internal links for navigation and external links to source code
        files, exercise solutions, and other resources that are not included in the PDF.
        (Size:&#160;6&#160;Megabytes; 751 pages.)
        </li>
        <li>
        <b><a href="http://math.hws.edu/eck/cs124/downloads/javanotes6.pdf">http://math.hws.edu/eck/cs124/downloads/javanotes6.pdf</a></b> --
        a PDF version without links, more suitable for printing.
        (Size:&#160;5.5&#160;Megabytes; 758 pages.)
        </li>
        <li>
        <b><a href="http://math.hws.edu/eck/cs124/downloads/javanotes6.epub">http://math.hws.edu/eck/cs124/downloads/javanotes6.epub</a>, and
        <a style="white-space:pre" href="http://math.hws.edu/eck/cs124/downloads/javanotes6.mobi">http://math.hws.edu/eck/cs124/downloads/javanotes6.mobi</a></b> --
        <b>experimental</b> ebook versions, new in version 6.0.3.  The "mobi" version can be used on Kindle, and the "epub" version
        can be used on ebook readers that support that format (which should be most non-Kindles).  The ebooks include answers to quizzes
        and exercises but do not include source code for examples; for the source code, you can get the full web site download, above, and 
        look in the <i>source</i> directory.
        </li>
        <li><b>Printed versions</b> -- I have made this book available for
        purchase in printed versions from the print-on-demand publisher
        <a href="http://www.lulu.com">lulu.com</a>.  This is for convenience only, for those who would
        like to have a bound printout in a nice form.
        (Please <b>do not</b> feel obliged to buy the printed version; I do not make any money from it!)
        The entire book is available in a rather thick printed version at
        <a href=" http://www.lulu.com/content/612392">http://www.lulu.com/content/612392</a>.
        It is also available in two parts as <a href="http://www.lulu.com/content/559884">http://www.lulu.com/content/559884</a>
        and <a href="http://www.lulu.com/content/822314">http://www.lulu.com/content/822314</a>.
        </li>
        <li><b>Complete Sources</b> -- The complete source files that are used to produce both the web site
        and PDF versions of this book are available for download, but will be useful only to a very limited
        audience.  See the end of the <a href="preface.html">preface</a> for more information and a link.</li>
        </ul>
        </td></tr></table>
        <hr/>
        <div align="right"><small><i>(1 June 2011, Version 6.0 released)<br/>
                           (25 July 2012, Version 6.0.1 released)<br/>
                           (17 May 2013, Version 6.0.2 released)<br/>
                           (4 January 2014, Version 6.0.3 released)
                           </i></small></div>
        </div>
        </body>
        </html>
   </redirect:write>
   <xsl:call-template name="table-of-contents">
      <xsl:with-param name="subsections" select="true()"/>
   </xsl:call-template>
   <xsl:call-template name="table-of-contents">
      <xsl:with-param name="subsections" select="false()"/>
   </xsl:call-template>
   <xsl:apply-templates select="/javanotes/preface"/>
   <xsl:apply-templates select="/javanotes/chapter"/>
   <xsl:apply-templates select="/javanotes/source"/>
   <xsl:apply-templates select="/javanotes/glossary"/>
</xsl:template>
   
<xsl:template name="table-of-contents">
   <xsl:param name="subsections"/>
   <xsl:variable name="file">web/contents<xsl:if test="$subsections">-with-subsections</xsl:if>.html</xsl:variable>
   <redirect:write select="$file">
     <html>
     <head>
     <title>Javanotes 6.0 Table of Contents</title>
     <link href="javanotes.css" rel="stylesheet" type="text/css"/>
     </head>
     <body>
     <div class="content">
        <h3 align="center">Introduction to Programming Using Java, Sixth Edition</h3>
        <h2 align="center">Table of Contents</h2>
        <hr/>
        <p align="center"><span class="start"><big>T</big>his is the Table of Contents</span> for the free on-line
           textbook <a href="index.html"><i>Introduction to Programming Using Java</i></a>.</p>
        <xsl:choose>
           <xsl:when test="$subsections">
              <p align="center"><b><a href="contents.html">(Click here to hide subsections.)</a></b></p>
           </xsl:when>
           <xsl:otherwise>
              <p align="center"><b><a href="contents-with-subsections.html">(Click here to show subsections.)</a></b></p>
           </xsl:otherwise>
        </xsl:choose>
        <hr/>
        <div style="margin-left: 30pt">
        <p><a href="preface.html"><b>Preface</b></a></p>
        <xsl:for-each select="/javanotes/chapter">
           <xsl:variable name="chapter"><xsl:value-of select="position()"/></xsl:variable>
           <p><b>Chapter <xsl:value-of select="$chapter"/>:&#160;
              <a><xsl:attribute name="href"><xsl:value-of 
                      select="concat('c',$chapter,'/index.html')"/></xsl:attribute><xsl:value-of select="@title"/></a></b></p>
           <ul>
           <xsl:for-each select="section">
              <xsl:variable name="section"><xsl:value-of select="position()"/></xsl:variable>
              <li>Section <xsl:value-of select="$chapter"/>.<xsl:value-of select="$section"/>&#160;
                 <a><xsl:attribute name="href"><xsl:value-of 
                         select="concat('c',$chapter,'/s',$section,'.html')"/></xsl:attribute><xsl:value-of select="@title"/></a>
               <xsl:if test="$subsections and subsection">
                  <ul>
                     <xsl:for-each select="subsection">
                        <li>
                           <xsl:value-of select="$chapter"/>.<xsl:value-of select="$section"/>.<xsl:value-of select="position()"/>&#160;
                                 <a><xsl:attribute name="href"><xsl:value-of 
                                        select="concat('c',$chapter,'/s',$section,'.html#',@id)"/></xsl:attribute><xsl:value-of select="@title"/></a>
                        </li>
                     </xsl:for-each>
                  </ul>
               </xsl:if>
              </li>
           </xsl:for-each>
           <xsl:if test="exercises">
              <li><a><xsl:attribute name="href"><xsl:value-of select="concat('c',$chapter,'/exercises.html')"/></xsl:attribute>Programming Exercises</a></li>
           </xsl:if>
           <xsl:if test="quiz">
              <li><a><xsl:attribute name="href"><xsl:value-of select="concat('c',$chapter,'/quiz.html')"/></xsl:attribute>Quiz</a></li>
           </xsl:if>
           </ul>
        </xsl:for-each>
        <p><b>Appendix:</b>&#160; <a href="source/index.html">Source Code for the Examples in this Book</a></p>
        <xsl:if test="/javanotes/glossary">
           <p><b>Appendix:</b>&#160; <a href="glossary.html">Glossary</a></p>
        </xsl:if>
     </div>
     <hr/>
     <div align="right"><small><a href="http://math.hws.edu/eck/index.html">David Eck</a>, June 2011</small></div>
     </div>
     </body>
     </html>
   </redirect:write>
</xsl:template>

<xsl:template match="chapter">
   <redirect:write select="concat('web/c',position(),'/index.html')">
        <html>
        <head>
        <title>Javanotes 6.0, Chapter <xsl:value-of select="position()"/> -- <xsl:value-of select="@title"/></title>
        <link href="../javanotes.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
        <div align="right"><xsl:call-template name="chapter-navbar"/></div>
        <hr/>
        <div class="content">
        <h3 class="chapter_title">Chapter <xsl:value-of select="position()"/></h3>
        <h2 class="chapter_title"><xsl:value-of select="@title"/></h2>
        <hr class="break"/>
        <xsl:apply-templates select="intro"/>
        <hr class="break"/>
        <h3>Contents of Chapter <xsl:value-of select="position()"/>:</h3>
        <ul class="contents">
        <xsl:for-each select="section">
            <li>Section <xsl:value-of select="position()"/>: <a><xsl:attribute name="href"><xsl:value-of select="concat('s',position(),'.html')"/></xsl:attribute><xsl:value-of select="@title"/></a></li>
        </xsl:for-each>
        <xsl:if test="exercises">
           <li><a href="exercises.html">Programming Exercises</a></li>
        </xsl:if>
        <xsl:if test="quiz">
           <li><a href="quiz.html">Quiz on This Chapter</a></li>
        </xsl:if>
        </ul>
        </div>
        <hr/>
        <div align="right"><xsl:call-template name="chapter-navbar"/></div>
        </body>
        </html>
   </redirect:write>
   <xsl:apply-templates select="section">
       <xsl:with-param name="chapternum" select="position()"/>
   </xsl:apply-templates>
   <xsl:if test="exercises">
      <xsl:call-template name="do-exercises"></xsl:call-template>
      <xsl:call-template name="do-exercise-answers"></xsl:call-template>
   </xsl:if>
   <xsl:apply-templates select="quiz">
      <xsl:with-param name="answers" select="false()"/>
   </xsl:apply-templates>
   <xsl:apply-templates select="quiz">
      <xsl:with-param name="answers" select="true()"/>
   </xsl:apply-templates>
</xsl:template>
<xsl:template name="chapter-navbar">
    <small>
        [  <a href="s1.html">First Section</a> |
           <xsl:if test="position()>1">
               <a><xsl:attribute name="href"><xsl:value-of select="concat('../c',position()-1,'/index.html')"/></xsl:attribute>Previous Chapter</a> |
           </xsl:if>
           <xsl:if test="not(position()=last())">
               <a><xsl:attribute name="href"><xsl:value-of select="concat('../c',position()+1,'/index.html')"/></xsl:attribute>Next Chapter</a> |
           </xsl:if>
        <a href="../index.html">Main Index</a> ]
    </small>
</xsl:template>
   
<xsl:template match="preface">
   <redirect:write select="'web/preface.html'">
     <html>
     <head>
     <title>Javanotes 6.0 Preface</title>
     <link href="javanotes.css" rel="stylesheet" type="text/css"/>
     </head>
     <body>
     <div class="content">
        <h3 align="center">Introduction to Programming Using Java<br/>
           Version 6.0, June 2011<br/></h3>
        <p align="center"><small><i>Version 6.0.3, with minor corrections, January 2014</i></small></p>
        <h2 align="center">Preface</h2>
        <hr class="break"/>
        <xsl:apply-templates/>
     </div>
     <hr/>
     <div align="right"><small><a href="http://math.hws.edu/eck/index.html">David Eck</a></small></div>
     </body>
     </html>
   </redirect:write>
</xsl:template>
    
<xsl:template match="source">
   <redirect:write select="'web/source/index.html'">
     <html>
     <head>
     <title>Javanotes Source Code</title>
     <link href="../javanotes.css" rel="stylesheet" type="text/css"/>
     </head>
     <body>
     <div class="content">
        <h3 align="center">Introduction to Programming Using Java, Sixth Edition</h3>
        <h2 align="center">Source Code</h2>
        <hr class="break"/>
        <xsl:apply-templates/>
     </div>
     <hr/>
     <div align="right"><small><a href="http://math.hws.edu/eck/index.html">David Eck</a>, June 2011</small></div>
     </body>
     </html>
   </redirect:write>
</xsl:template>

<xsl:template match="glossary">
    <redirect:write select="'web/glossary.html'">
     <html>
     <head>
     <title>Javanotes Glossary</title>
     <link href="javanotes.css" rel="stylesheet" type="text/css"/>
     </head>
     <body>
     <div class="content">
        <h3 align="center">Introduction to Programming Using Java, Sixth Edition</h3>
        <h2 align="center">Glossary</h2>
        <hr class="break"/>
        <xsl:apply-templates/>
     </div>
     <hr/>
     <div align="right"><small><a href="http://math.hws.edu/eck/index.html">David Eck</a>, June 2011</small></div>
     </body>
     </html>
    </redirect:write>
</xsl:template>
    

<xsl:template match="gitem">
    <p class="glossary_item"><span class="glossary_term"><xsl:value-of select="@term"/>.</span>&#160;
    <span class="glossary_definition"><xsl:apply-templates/></span></p>
</xsl:template>
    
<xsl:template match="section">
    <xsl:param name="chapternum"/>
    <redirect:write select="concat('web/c',$chapternum,'/s',position(),'.html')">
        <html>
        <head>
        <title>Javanotes 6.0, Section <xsl:value-of select="$chapternum"/>.<xsl:value-of select="position()"/> -- <xsl:value-of select="@title"/></title>
        <link href="../javanotes.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
        <div align="right"><xsl:call-template name="section-navbar"/></div>
        <hr/>
        <xsl:if test="subsection">
           <table align="right" border="2" cellpadding="5" hspace="8" vspace="8" class="subsections"><tr><td>
              <div align="center">
                 <b>Subsections</b><hr/>
                 <small><xsl:for-each select="subsection">
                    <a><xsl:attribute name="href"><xsl:value-of select="concat('#',@id)"/></xsl:attribute><xsl:value-of select="@title"/></a><br/>
                 </xsl:for-each>
                 </small>
              </div>
           </td></tr></table>
        </xsl:if>
        <div class="content">
        <h3 class="section_title">Section <xsl:value-of select="$chapternum"/>.<xsl:value-of select="position()"/></h3>
        <h2 class="section_title"><xsl:value-of select="@title"/></h2>
        <hr class="break"/>
        <xsl:apply-templates/>
        </div>
        <hr/>
        <div align="right"><xsl:call-template name="section-navbar"/></div>
        </body>
        </html>
    </redirect:write>
</xsl:template>
<xsl:template name="section-navbar">
    <small>
        [  <xsl:if test="position()>1">
               <a><xsl:attribute name="href"><xsl:value-of select="concat('s',position()-1,'.html')"/></xsl:attribute>Previous Section</a> |
           </xsl:if>
           <xsl:if test="not(position()=last())">
               <a><xsl:attribute name="href"><xsl:value-of select="concat('s',position()+1,'.html')"/></xsl:attribute>Next Section</a> |
           </xsl:if>
        <a href="index.html">Chapter Index</a> | 
        <a href="../index.html">Main Index</a> ]
    </small>
</xsl:template>
    
<xsl:template match="subsection">
    <hr class="break"/>
    <h3 class="subsection_title"><a><xsl:attribute name="name"><xsl:value-of select="@id"/></xsl:attribute><xsl:if test="not(ancestor::source)"><xsl:number count="chapter"/>.<xsl:number count="section"/>.<xsl:number count="subsection"/>&#160;&#160;</xsl:if><xsl:value-of select="@title"/></a></h3>
    <xsl:apply-templates/>
</xsl:template>

<xsl:template name="do-exercises">
    <xsl:variable name="chapternum">
       <xsl:number count="chapter"/>
    </xsl:variable>
    <redirect:write select="concat('web/c',$chapternum,'/exercises.html')">
        <html>
        <head>
        <title>Javanotes 6.0, Exercises for Chapter <xsl:value-of select="$chapternum"/></title>
        <link href="../javanotes.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
        <div align="right"><xsl:call-template name="exercises-navbar"></xsl:call-template></div>
        <hr/>
        <div class="content">
        <h2>Programming Exercises for Chapter <xsl:value-of select="$chapternum"/></h2>
        <hr class="break"/>
        <p><span class="start"><big>T</big>his page contains</span> several exercises for Chapter <xsl:value-of select="$chapternum"/>
        in <a href="../index.html">Introduction to Programming Using Java</a>.  For each exercise, a link to
        a possible solution is provided.   Each solution includes a discussion of how a programmer might approach the
        problem and interesting points raised by the problem or its solution, as well as complete source
        code of the solution.</p>
        <xsl:for-each select="exercises/exercise">
           <hr/>
           <h3 class="exercise">Exercise <xsl:value-of select="$chapternum"/>.<xsl:value-of select="position()"/>:</h3>
           <xsl:apply-templates select="exercise-question"/>
           <p align="right"><a><xsl:attribute name="href"><xsl:value-of select="concat('ex',position(),'-ans.html')"/></xsl:attribute>See the Solution</a></p>
        </xsl:for-each>
        </div>
        <hr/>
        <div align="right"><xsl:call-template name="exercises-navbar"></xsl:call-template></div>
        </body>
        </html>
    </redirect:write>
</xsl:template>
<xsl:template name="exercises-navbar">
    <small>
        [  <a href="index.html">Chapter Index</a> | 
        <a href="../index.html">Main Index</a> ]
    </small>
</xsl:template>
       
<xsl:template name="do-exercise-answers">
    <xsl:variable name="chapternum">
       <xsl:number count="chapter"/>
    </xsl:variable>
    <xsl:for-each select="exercises/exercise">
       <redirect:write select="concat('web/c',$chapternum,'/ex',position(),'-ans.html')">
           <html>
           <head>
           <title>Javanotes 6.0, Solution to Exercise <xsl:value-of select="position()"/>, Chapter <xsl:value-of select="$chapternum"/></title>
           <link href="../javanotes.css" rel="stylesheet" type="text/css"/>
           </head>
           <body>
           <div align="right"><xsl:call-template name="exercise-answer-navbar"></xsl:call-template></div>
           <hr/>
           <div class="content">
           <h2>Solution for Programming Exercise <xsl:value-of select="$chapternum"/>.<xsl:value-of select="position()"/></h2>
           <hr class="break"/>
           <p><span class="start"><big>T</big>his page contains</span> a sample solution to
           one of the exercises from <a href="../index.html">Introduction to Programming Using Java</a>.</p>
           <hr/>
              <h3 class="exercise">Exercise <xsl:value-of select="$chapternum"/>.<xsl:value-of select="position()"></xsl:value-of>:</h3>
              <xsl:apply-templates select="exercise-question"/>
           <hr/>
           <div align="center" class="exercisesubtitle"><big><b>Discussion</b></big></div>
           <hr/>
           <xsl:apply-templates select="exercise-discuss"/>
           <hr/>
           <div align="center" class="exercisesubtitle"><big><b>The Solution</b></big></div>
           <hr/>
           <xsl:apply-templates select="exercise-code"/>
           </div>
           <hr/>
           <div align="right"><xsl:call-template name="exercise-answer-navbar"></xsl:call-template></div>
           </body>
           </html>
       </redirect:write>
    </xsl:for-each>
</xsl:template>
<xsl:template name="exercise-answer-navbar">
    <small>
        [ <a href="exercises.html">Exercises</a> |
        <a href="index.html">Chapter Index</a> | 
        <a href="../index.html">Main Index</a> ]
    </small>
</xsl:template>

<xsl:template match="quiz">
    <xsl:param name="answers"/>
    <xsl:variable name="chapternum">
       <xsl:number count="chapter"/>
    </xsl:variable>
    <xsl:variable name="filename">
       <xsl:choose>
          <xsl:when test="$answers"><xsl:text>quiz_answers</xsl:text></xsl:when>
          <xsl:otherwise><xsl:text>quiz</xsl:text></xsl:otherwise>
       </xsl:choose>
    </xsl:variable>
    <redirect:write select="concat('web/c',$chapternum,'/',$filename,'.html')">
        <html>
        <head>
        <title>Javanotes 6.0, <xsl:if test="$answers">Answers for </xsl:if>Quiz on Chapter <xsl:value-of select="$chapternum"/></title>
        <link href="../javanotes.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
        <div align="right"><xsl:call-template name="quiz-navbar"><xsl:with-param name="answers" select="$answers"/></xsl:call-template></div>
        <hr/>
        <div class="content">
        <h2 class="quiz_title"><xsl:if test="$answers">Answers for </xsl:if>Quiz on Chapter <xsl:value-of select="$chapternum"/></h2>
           <xsl:choose>
           <xsl:when test="$answers">
           <p><span class="start"><big>T</big>his page contains</span> sample answers to the quiz on Chapter <xsl:value-of select="$chapternum"/> of
           <a href="../index.html"><i>Introduction to Programming Using Java</i></a>.
           Note that generally, there are lots of correct answers to a given question.</p>
           </xsl:when>
           <xsl:otherwise>
           <p><span class="start"><big>T</big>his page contains</span> questions on Chapter <xsl:value-of select="$chapternum"/> of
           <a href="../index.html"><i>Introduction to Programming Using Java</i></a>.
           You should be able to answer these questions after studying that chapter.
           Sample answers to these questions can be found <a href="quiz_answers.html">here</a>.</p>
           </xsl:otherwise>
        </xsl:choose>
        <table width="95%" cellpadding="8" align="center" border="1">
        <xsl:for-each select="question">
           <tr class="question"><td valign="top"><span class="question">Question&#160;<xsl:number count="question"/>:</span></td>
           <td><xsl:apply-templates select="ques"/></td></tr>
           <xsl:if test="$answers">
              <tr class="answer"><td valign="top"><span class="answer">Answer:</span></td>
              <td><xsl:apply-templates select="ans"/></td></tr>
           </xsl:if>
        </xsl:for-each>
        </table>
        </div>
        <hr/>
        <div align="right"><xsl:call-template name="quiz-navbar"><xsl:with-param name="answers" select="$answers"/></xsl:call-template></div>
        </body>
        </html>
    </redirect:write>
</xsl:template>
<xsl:template name="quiz-navbar">
    <xsl:param name="answers"/>
    <small>
        [  <xsl:if test="not($answers)"><a href="quiz_answers.html">Quiz Answers</a> | </xsl:if>
        <a href="index.html">Chapter Index</a> | 
        <a href="../index.html">Main Index</a> ]
    </small>
</xsl:template>

<xsl:template match="p">
    <p><xsl:if test="@align">
            <xsl:attribute name="align">
                <xsl:value-of select="@align"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="np"><p><xsl:apply-templates/></p></xsl:template>

    
<xsl:template match="ol|ul|li|big|u|i|b|sup|sub">
   <xsl:copy><xsl:apply-templates/></xsl:copy>
</xsl:template>

<xsl:template match="pre">
   <xsl:choose>
      <xsl:when test="ancestor::exercise-code"><pre class="exercisecode">
         <xsl:apply-templates/>
         </pre>
      </xsl:when>
      <xsl:otherwise><pre>
         <xsl:apply-templates/>
         </pre>
      </xsl:otherwise>
   </xsl:choose>
</xsl:template>

<xsl:template match="code|ptype|newword|codedef|bnf|newcode|start|classname|atype">
    <span><xsl:attribute name="class"><xsl:value-of select="local-name()"/></xsl:attribute><xsl:apply-templates/></span>
</xsl:template>
    
<xsl:template match="a">
    <a><xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute><xsl:apply-templates/></a>
</xsl:template>
    
<xsl:template match="sourceref">
   <xsl:variable name="ref">
      <xsl:choose>
         <xsl:when test="ancestor::source"><xsl:value-of select="@href"/></xsl:when>
         <xsl:otherwise><xsl:text>../source/</xsl:text><xsl:value-of select="@href"/></xsl:otherwise>
      </xsl:choose>
   </xsl:variable>
   <span class="sourceref"><a><xsl:attribute name="href"><xsl:value-of select="$ref"/></xsl:attribute>
   <xsl:choose>
      <xsl:when test="text()"><xsl:apply-templates/></xsl:when>
      <xsl:otherwise><xsl:value-of select="@href"/></xsl:otherwise>
   </xsl:choose>
   </a></span>
</xsl:template>
    
<xsl:template match="localref">
    <xsl:if test="not(id(@href))"><xsl:message>Undefined reference <xsl:value-of select="@href"/></xsl:message></xsl:if>
    <xsl:variable name="href">
        <xsl:choose>
            <xsl:when test="not(id(@href))"><xsl:value-of select="@href"/></xsl:when>
            <xsl:when test="name(id(@href))='chapter'">
                <xsl:for-each select="id(@href)">
                <xsl:text>../c</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>/index.html</xsl:text>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="name(id(@href))='section'">
                <xsl:for-each select="id(@href)">
                <xsl:text>../c</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>/s</xsl:text>
                <xsl:number count="section" from="chapter"/>
                <xsl:text>.html</xsl:text>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="name(id(@href))='subsection'">
                <xsl:for-each select="id(@href)">
                <xsl:text>../c</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>/s</xsl:text>
                <xsl:number count="section" from="chapter"/>
                <xsl:text>.html#</xsl:text>
                <xsl:value-of select="@id"/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="name(id(@href))='exercise'">
               <xsl:for-each select="id(@href)">
                <xsl:text>../c</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>/ex</xsl:text>
                <xsl:number count="exercise" from="chapter"/>
                <xsl:text>-ans.html</xsl:text>
               </xsl:for-each>
            </xsl:when>
            <xsl:when test="name(id(@href))='fudgeref'">futurelink</xsl:when>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="reftext">
        <xsl:choose>
            <xsl:when test="text()"><xsl:apply-templates/></xsl:when>
            <xsl:when test="not(id(@href))"><xsl:text>(unknown&#160;reference)</xsl:text></xsl:when>
            <xsl:when test="name(id(@href))='chapter'">
                <xsl:for-each select="id(@href)">
                <xsl:text>Chapter&#160;</xsl:text>
                <xsl:number count="chapter"/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="name(id(@href))='section'">
                <xsl:for-each select="id(@href)">
                <xsl:text>Section&#160;</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>.</xsl:text>
                <xsl:number count="section" from="chapter"/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="name(id(@href))='subsection'">
                <xsl:for-each select="id(@href)">
                <xsl:text>Subsection&#160;</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>.</xsl:text>
                <xsl:number count="section" from="chapter"/>
                <xsl:text>.</xsl:text>
                <xsl:number count="subsection" from="section"/>
                </xsl:for-each>
            </xsl:when>
           <xsl:when test="name(id(@href))='exercise'">
                <xsl:for-each select="id(@href)">
                <xsl:text>Exercise&#160;</xsl:text>
                <xsl:number count="chapter"/>
                <xsl:text>.</xsl:text>
                <xsl:number count="exercise"/>
                </xsl:for-each>
           </xsl:when>
            <xsl:when test="name(id(@href))='fudgeref'">
                <xsl:for-each select="id(@href)"><xsl:value-of select="@text"/></xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:variable>
    <a><xsl:attribute name="href"><xsl:value-of select="$href"/></xsl:attribute><xsl:value-of select="$reftext"/></a>
</xsl:template>

<xsl:template match="fudgeref"/>
    
<xsl:template match="break">
    <hr class="break"/>
</xsl:template>
   
<xsl:template match="br">
   <br/>
</xsl:template>
   
<xsl:template match="narrower">
   <xsl:variable name="margin"><xsl:choose>
      <xsl:when test="@margin"><xsl:value-of select="@mrgin"/></xsl:when>
      <xsl:otherwise>100</xsl:otherwise>
   </xsl:choose></xsl:variable>
<div>
<xsl:attribute name="style">margin-left: <xsl:value-of select="$margin"/>; margin-right: <xsl:value-of select="$margin"/>;</xsl:attribute>
<xsl:apply-templates/>
</div>
</xsl:template>
    
<xsl:template match="img">
    <xsl:choose>
    <xsl:when test="@align">
        <xsl:call-template name="copy-image"></xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
        <p align="center"><xsl:call-template name="copy-image"></xsl:call-template></p>
    </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="copy-image">
    <img>
       <xsl:attribute name="src"><xsl:value-of select="@src"/></xsl:attribute>
       <xsl:if test="@width"><xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute></xsl:if>
       <xsl:if test="@height"><xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute></xsl:if>
       <xsl:if test="@align"><xsl:attribute name="align"><xsl:value-of select="@align"/></xsl:attribute></xsl:if>
       <xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute>
       <xsl:if test="@bordered"><xsl:attribute name="class"><xsl:text>bordered</xsl:text></xsl:attribute></xsl:if>
    </img>
</xsl:template>
   
<xsl:template match="imageclear">
   <br clear="all"/>
</xsl:template>
    
<xsl:template match="applet">
    <p align="center"><applet>
       <xsl:attribute name="code"><xsl:value-of select="@code"/></xsl:attribute>
       <xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute>
       <xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute>
       <xsl:if test="@archive"><xsl:attribute name="archive"><xsl:value-of select="@archive"/></xsl:attribute></xsl:if>
       <xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute>
       <xsl:if test="@img"><div align="center">
       <p><b>Java is not enabled in your browser,<br/>but here is an image of the applet:</b></p>
       <img><xsl:attribute name="src"><xsl:value-of select="@img"/></xsl:attribute></img></div>
       </xsl:if>    
       <xsl:apply-templates select="param"/>   
    </applet></p>
</xsl:template>
   
<xsl:template match="param">
   <param><xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
   <xsl:attribute name="value"><xsl:value-of select="@value"/></xsl:attribute></param>
</xsl:template>
   
<xsl:template match="centered">
<div align="center">
<xsl:apply-templates/>
</div>
</xsl:template>
   
<xsl:template match="endchapter">
    <hr/>
    <div align="center"><b><small>End of Chapter <xsl:number count="chapter"/></small></b></div>
    <hr/>
    <xsl:apply-templates/>
</xsl:template>
    
<xsl:template match="web">
    <xsl:apply-templates/>
</xsl:template>
    
<xsl:template match="webdiv">
    <xsl:apply-templates/>
</xsl:template>
    
<xsl:template match="tex"></xsl:template>
    
<xsl:template match="texdiv"></xsl:template>
    
</xsl:stylesheet>
