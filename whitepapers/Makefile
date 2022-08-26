.SILENT:
.PHONY: all clean

#add dependencies here (.dia files are automatically converted to .png if dia is installed)
DEPS := safir_logging.txt new_distribution.txt messages.txt improved_olib.txt readonly_install.txt block-diagram.png node.png sp_raw_pub_sub.png sp_between_nodes.png com_pgm.png com_design_overview.png com_design_discover.png Makefile lightnodes.txt

default: all

help:
	echo "Some available targets:"
	echo "   all         - build pdfs and html of all white papers"
	echo "   new_distribution.html - build single page html" 
	echo " Check the Makefile for other targets"

all: new_distribution.pdf new_distribution.html messages.pdf messages.html improved_olib.pdf improved_olib.html readonly_install.pdf readonly_install.html safir_logging.pdf safir_logging.html lightnodes.pdf lightnodes.html


vpath %.dia images
%.png: %.dia
	dia --export=$@ -t png $<

new_distribution.pdf: $(DEPS)
	echo "Building new_distribution pdf"
	a2x -L -f pdf -d book --xsltproc-opts="--stringparam section.autolabel 1 --stringparam section.label.includes.component.label 1 --stringparam toc.section.depth 3" --dblatex-opts "-P latex.output.revhistory=0" new_distribution.txt

new_distribution.html: $(DEPS)
	echo "Building new_distribution html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered new_distribution.txt

lightnodes.pdf: $(DEPS)
	echo "Building lightnodes pdf"
	a2x -L -f pdf -d book --xsltproc-opts="--stringparam section.autolabel 1 --stringparam section.label.includes.component.label 1 --stringparam toc.section.depth 3" --dblatex-opts "-P latex.output.revhistory=0" lightnodes.txt

lightnodes.html: $(DEPS)
	echo "Building lightnodes html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered lightnodes.txt


messages.pdf: $(DEPS)
	echo "Building message pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" messages.txt

messages.html: $(DEPS)
	echo "Building message html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered messages.txt

improved_olib.pdf: $(DEPS)
	echo "Building improved_olib pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" improved_olib.txt

improved_olib.html: $(DEPS)
	echo "Building improved_olib html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered improved_olib.txt

readonly_install.pdf: $(DEPS)
	echo "Building readonly_install pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" readonly_install.txt

readonly_install.html: $(DEPS)
	echo "Building readonly_install html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered readonly_install.txt


safir_logging.pdf: $(DEPS)
	echo "Building safir_logging pdf"
	a2x -L -f pdf -d article --dblatex-opts "-P latex.output.revhistory=0 -Pdoc.layout=\"coverpage frontmatter mainmatter \"" safir_logging.txt

safir_logging.html: $(DEPS)
	echo "Building safir_logging html"
	asciidoc -d book -a toc -a toclevels=4 -a numbered safir_logging.txt


clean:
	rm -rf *~ *.pdf *.html *.xml *.fo *.png
