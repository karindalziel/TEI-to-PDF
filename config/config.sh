#!/bin/bash

# locate saxon jar file
sax_jar=lib/saxon9he.jar

# locate FOP base directory
fop_lib=lib/fop-1.1

# additional options for FOP processing (sent to the java process)
#   -d64: optimization for 64 bit processor
#   -Xmx3000m: sets the maximum available memory allocation pool to 3000 MB
# Note: It's safe to leave this variable blank
fop_opts="-d64 -Xmx3000m"

# these variables shouldn't need to be changed, they are relative to fop_lib
fop_bin=${fop_lib}/fop
fop_conf=${fop_lib}/conf/fop.xconf

fo_obj=pdf.fo
pdf_obj=pdf.pdf

tei_xsl=TEIcorpus_producer.xsl
xslfo_xsl=xsl-fo-producer.xsl
init_xml=empty.xml
final_xml=Book_Corpus.xml

# further options that may be useful

# cleanup transitional files when finished
cleanup=true
