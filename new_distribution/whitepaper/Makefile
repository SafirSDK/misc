.SILENT:
.PHONY: all clean

#add dependencies here (.dia files are automatically converted to .png if dia is installed)
DEPS := whitepaper.txt block-diagram.png sp_raw_pub_sub.png com_pgm.png Makefile

default: whitepaper.pdf

help:
	echo "Some available targets:"
	echo "   default         - build pdf"
	echo "   whitepaper.html - build single page html" 
	echo " Check the Makefile for other targets"

all: whitepaper.pdf whitepaper.html


vpath %.dia images
%.png: %.dia
	dia --export=$@ -t png $<


whitepaper.pdf: $(DEPS)
	echo "Building pdf"
	a2x -L -f pdf -d book --xsltproc-opts="--stringparam section.autolabel 1 --stringparam section.label.includes.component.label 1 --stringparam toc.section.depth 3" whitepaper.txt

whitepaper.html: $(DEPS)
	echo "Building html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered whitepaper.txt

clean:
	rm -rf *~ *.pdf *.html *.xml *.fo
