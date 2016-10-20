<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
       xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dyn="http://exslt.org/dynamic"
    xmlns:exsl="http://exslt.org/common"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:saxon="http://icl.com/saxon"
    extension-element-prefixes="exsl dyn fn saxon"
	   version="1.0"
	   exclude-result-prefixes="h dyn fn"
	   xmlns:h="http://www.w3.org/1999/xhtml">
 <xsl:output encoding="UTF-8" indent="yes" method="xml" omit-xml-declaration="no" cdata-section-elements=""/>
 <xsl:preserve-space elements="h:script"/>
<xsl:template match="/">

<saxon:output method="xml" encoding="utf-8" href="index.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='frontmatter']"/></xsl:call-template>
</saxon:output>

<saxon:output method="xml" encoding="utf-8" href="contributors.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='contributors']"/></xsl:call-template>
</saxon:output>

<saxon:output method="xml" encoding="utf-8" href="chapter1.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section1']"/></xsl:call-template>
</saxon:output>

 <saxon:output method="xml" encoding="utf-8" href="chapter2.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section2']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter3.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section3']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter4.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section4']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter5.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section5']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter6.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section6']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter7.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section7']"/></xsl:call-template>
</saxon:output>
<!--
<saxon:output method="xml" encoding="utf-8" href="chapter8.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter8']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter9.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter9']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter10.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter10']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter11.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter11']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter12.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter12']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter13.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter13']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter14.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter14']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter15.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter15']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter16.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter16']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter17.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter17']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter18.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter18']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter19.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter19']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter20.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='chapter20']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="bibliography.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='bibliography']"/></xsl:call-template>
</saxon:output>

-->
</xsl:template>

<xsl:template name="chunk">
<xsl:param name="node"/>
<xsl:param name="node2"/>
<html xmlns="http://www.w3.org/1999/xhtml" 
>
  
  <xsl:apply-templates select="//h:head"/>
  <body>
  
   <div style="text-align:center;background:#aaa;margin:1em;padding:2em">
    <p class="textindent0">This document is part of the online version of the book <i>An Oasis City</i> by RSB et al, which is available at <b><a href="http://dlib.nyu.edu/awdl/isaw/oasis-city/">http://dlib.nyu.edu/awdl/isaw/oasis-city/</a></b>. It is published as part of the NYU Library's <a href="http://dlib.nyu.edu/awdl">Ancient World Digital Library</a> and in partnership with the <a href="http://isaw.nyu.edu/" >Institute for the Study of the Ancient World</a> (ISAW).  Further information about ISAW's publication program is available on the <a href="http://isaw.nyu.edu/publications">ISAW</a> website. Please note that while the base URI of this publication is stable, the exact content available at that address is likely to change over time.</p>
    <a href="http://creativecommons.org/licenses/by-nc/4.0/"> 
     <img alt="Creative Commons License" style="border-width:0;margin-top:1em" src="http://i.creativecommons.org/l/by-nc/4.0/88x31.png" /> 
    </a>
    <p/>
    <p class="textindent0">Text and images ©2015 The Authors. Distributed under the terms of Creative Commons Attribution - NonCommercial 4.0 License.</p>
   </div>


  
  
  <xsl:apply-templates  select="$node"/>
  <!--
  <xsl:if test="$node//h:a[@class='footnote-reference']">
<h2>Notes</h2>
   <xsl:for-each select="$node//h:a[@class='footnote-reference']">
   <xsl:variable name="oldref"><xsl:value-of select="substring(@href,2)"/></xsl:variable>
    <p class="footnote" id="footnote-{position()}">
     <sup><a href="#footnote-reference-{position()}"><xsl:value-of select="position()"/></a></sup> <xsl:apply-templates select="//h:p[@id=$oldref]/." mode="oldref"/>
    </p>
   </xsl:for-each>
  </xsl:if>
  
  <xsl:if test="$node2"><xsl:apply-templates  select="$node2"/></xsl:if>
  -->
  </body>
 </html>
</xsl:template>






<xsl:template match="h:p" mode="oldref">
<xsl:apply-templates mode="oldref"/>
</xsl:template>

<xsl:template match="h:sup" mode="oldref">
</xsl:template>

 <xsl:template match="h:head">
  <xsl:element name="head">
   <xsl:apply-templates />
   <script src="http://isawnyu.github.com/awld-js/lib/requirejs/require.min.js" type="text/javascript"></script>
   <!-- <script src="http://isawnyu.github.com/awld-js/awld.js" type="text/javascript"></script> 
    <style type="text/css">

    body {max-width:8.5in; margin-top:.5in; margin-bottom:1in; margin-left:1in; margin-right:1in; writing-mode:lr-tb;}
    
    figcaption { text-align:center; margin-top:.5em; }
    
    h2 { text-align:center }
    
    p { font-size:12pt; line-height:1.4em; margin-bottom:0.139in; margin-top:0in;  text-indent:.5em;text-align:justify  }
    p.textindent0  {text-indent:0}
    p.catalog-item-number {text-indent:0; margin-bottom:0;  margin-top:.5em}
    p.catalog-line {text-indent:0; margin-bottom:0; margin-top:0}
    .right {text-align: right}
    sup {
     line-height:0;
     color:black;
     }
     
    img {
      max-width: 500px;
      max-height: 500px;
      display: block;
      margin: 0 auto;
     }
     
    blockquote { tab-size: 8 }
        .work-cited { margin-left:.5in;text-indent:-.5in }
        h1 {text-align: center}
        
table { margin-bottom: .5em} 

th, td {
    border: 1px solid #ddd;
    border-collapse: collapse;
    border-spacing: 0;
}
 
 </style>
 -->
  </xsl:element>
  </xsl:template>

 
 <xsl:template match="@*|node()">
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:template>
 
 <xsl:template match="@style"><xsl:if test="name(..) != 'img'"><xsl:attribute name="style"><xsl:value-of select="."/></xsl:attribute></xsl:if></xsl:template>
 
 
  <xsl:template match="@src"><xsl:if test="name(..) = 'img'"><xsl:attribute name="src"><xsl:value-of select="concat('resized-',.)"/></xsl:attribute></xsl:if></xsl:template>

 
 
<xsl:template match="h:p[@id]">
  
  <xsl:element name="p">
   <xsl:attribute name="onmouseover">document.getElementById('<xsl:value-of select="@id"/>anchor').style.display='';document.getElementById('<xsl:value-of select="@id"/>anchor_label').style.display='';</xsl:attribute>
   <xsl:attribute name="onmouseleave">document.getElementById('<xsl:value-of select="@id"/>anchor').style.display='none';document.getElementById('<xsl:value-of select="@id"/>anchor_label').style.display='none';</xsl:attribute>
   <xsl:apply-templates select="@*"/>

   <xsl:apply-templates/><a id="{@id}anchor" class="id_link" style="color:aaa;display:none" href="#{@id}">↩</a><span id="{@id}anchor_label" style="color:aaa;display:none;position:fixed;right:0;bottom:50%" href="#{@id}">#<xsl:value-of select="@id"/>&#160;&#160;</span>
   </xsl:element>
 </xsl:template>
 
<xsl:template match="*[@class='index_entry_reference']"><xsl:apply-templates/></xsl:template>

<xsl:template match="h:section[@id='preface' or @id='contributors']">
  <xsl:element name="section">
   <xsl:apply-templates select="@*"/>
   <div style="text-align:center"><a href="index.xhtml">[table of contents]</a></div>
   <xsl:apply-templates/></xsl:element>
</xsl:template>

<xsl:template match="h:h1[@class='chapter-number']"><div style="text-align:center"><a href="index.xhtml">[table of contents]</a></div><h1>Chapter <xsl:apply-templates/></h1></xsl:template>

<xsl:template match="h:a[@class='footnote-reference']">
<a>
 <xsl:variable name="newnum"><xsl:number count="h:a[@class='footnote-reference']" level="any" from="h:section[@class = 'chapter']" /></xsl:variable>
 <xsl:attribute name="class">footnote-reference</xsl:attribute>
 <xsl:attribute name="id">footnote-reference-<xsl:value-of select="$newnum"/></xsl:attribute>
 <xsl:attribute name="href">#footnote-<xsl:value-of select="$newnum"/></xsl:attribute>
 <xsl:value-of select="$newnum"/>
</a>
</xsl:template>

<xsl:template match="comment()"/>

<xsl:template match="h:a[parent::h:li[@class='level1']]"> 
<a href="{substring(@href,2)}.xhtml"><xsl:apply-templates/></a>
</xsl:template>

 <xsl:template match="processing-instruction()"/>
 
 <xsl:template match="*[@id = 'figures']"/>

</xsl:stylesheet>
 
