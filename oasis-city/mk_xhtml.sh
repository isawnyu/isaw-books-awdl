cp /Users/sfsh/Documents/isaw/isaw-digital-books-private/oasis-city/oasis-city.xhtml .
cp /Users/sfsh/Documents/isaw/isaw-digital-books-private/oasis-city/css/*.css css/

xsltproc --nonet oc2xhtml.xsl oasis-city.xhtml
