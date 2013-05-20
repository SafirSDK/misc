.SILENT:
.PHONY: all clean

#add dependencies here (.dia files are automatically converted to .png if dia is installed)
DEPS := safir_logging.txt new_distribution.txt messages.txt readonly_install.txt block-diagram.png sp_raw_pub_sub.png com_pgm.png Makefile

default: all

help:
	echo "Some available targets:"
	echo "   all         - build pdfs and html of all white papers"
	echo "   new_distribution.html - build single page html" 
	echo " Check the Makefile for other targets"

all: new_distribution.pdf new_distribution.html messages.pdf messages.html readonly_install.pdf readonly_install.html safir_logging.pdf safir_logging.html


vpath %.dia images
%.png: %.dia
	dia --export=$@ -t png $<


new_distribution.pdf: $(DEPS)
	echo "Building new_distribution pdf"
	a2x -L -f pdf -d book --xsltproc-opts="--stringparam section.autolabel 1 --stringparam section.label.includes.component.label 1 --stringparam toc.section.depth 3" --dblatex-opts "-P latex.output.revhistory=0" new_distribution.txt

new_distribution.html: $(DEPS)
	echo "Building new_distribution html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered new_distribution.txt


messages.pdf: $(DEPS)
	echo "Building message pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" messages.txt

messages.html: $(DEPS)
	echo "Building message html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered messages.txt

readonly_install.pdf: $(DEPS)
	echo "Building message pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" readonly_install.txt

readonly_install.html: $(DEPS)
	echo "Building message html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered readonly_install.txt


safir_logging.pdf: $(DEPS)
	echo "Building safir_logging pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" safir_logging.txt

safir_logging.html: $(DEPS)
	echo "Building safir_logging html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered safir_logging.txt


clean:
	rm -rf *~ *.pdf *.html *.xml *.fo *.png
