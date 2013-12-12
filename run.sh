#!/bin/bash

sax_jar=saxon.jar
fop_lib=./lib/fop
fop_bin=${fop_lib}/fop
fop_conf=${fop_lib}/conf/fop.xconf

fo_obj=pdf.fo
pdf_obj=pdf.pdf

tei_xsl=TEIcorpus_producer.xsl
xslfo_xsl=xsl-fo-producer.xsl
init_xml=empty.xml
final_xml=Book_Corpus.xml

java -jar "${sax_jar}" "${init_xml}" "${tei_xsl}" > "${final_xml}" && \
java -jar "${sax_jar}" "${final_xml}" "${xslfo_xsl}" > "${fo_obj}" && \
"${fop_bin}" -c "${fop_conf}" "${fo_obj}" "${pdf_obj}"
