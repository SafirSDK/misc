.SILENT:
.PHONY: all clean

#add dependencies here (.dia files are automatically converted to .png if dia is installed)
DEPS := syslog.txt whitepaper.txt messages.txt block-diagram.png sp_raw_pub_sub.png com_pgm.png Makefile

default: all

help:
	echo "Some available targets:"
	echo "   default         - build pdf"
	echo "   whitepaper.html - build single page html" 
	echo " Check the Makefile for other targets"

all: whitepaper.pdf whitepaper.html messages.pdf messages.html safir_logging.pdf safir_logging.html


vpath %.dia images
%.png: %.dia
	dia --export=$@ -t png $<


whitepaper.pdf: $(DEPS)
	echo "Building whitepaper pdf"
	a2x -L -f pdf -d book --xsltproc-opts="--stringparam section.autolabel 1 --stringparam section.label.includes.component.label 1 --stringparam toc.section.depth 3" --dblatex-opts "-P latex.output.revhistory=0" whitepaper.txt

whitepaper.html: $(DEPS)
	echo "Building whitepaper html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered whitepaper.txt


messages.pdf: $(DEPS)
	echo "Building message pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" messages.txt

messages.html: $(DEPS)
	echo "Building message html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered messages.txt

safir_logging.pdf: $(DEPS)
	echo "Building safir_logging pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" safir_logging.txt

safir_logging.html: $(DEPS)
	echo "Building safir_logging html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered safir_logging.txt


clean:
	rm -rf *~ *.pdf *.html *.xml *.fo *.png
