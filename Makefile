LATEX=pdflatex

NONSTOP=--interaction=nonstopmode # Let pdflatex compile without interactive user input.

LATEXMK=latexmk
LATEXMKOPT=-pdf
PREVIEW=-pv # Preview 

# Code inspired from - https://drewsilcock.co.uk/using-make-and-latexmk/
MAIN=harshad
TEX_FILES := $(shell find . -type f -name "*.tex" )
SOURCES=$(MAIN).tex Makefile $(TEX_FILES)
FIGURES := $(shell find . -path '*/figures/*' -type f -printf '%P\n')

all :	$(MAIN).pdf

.refresh : 
	touch .refresh

$(MAIN).pdf:	$(MAIN).tex .refresh $(SOURCES) $(FIGURES) 
	$(LATEXMK) $(LATEXMKOPT) $(PREVIEW) -pdflatex="$(LATEX) $(LATEXOPT) $(NONSTOP) %O %S" $(MAIN)
         
force:
	touch .refresh  
	rm $(MAIN).pdf 
	$(LATEXMK) $(LATEXMKOPT) $(PREVIEW) -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)

clean:  
	$(LATEXMK) -C $(MAIN)
	rm -f $(MAIN).pdfsync
	rm -rf *~ *.tmp
	rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk

once:  
	$(LATEXMK) $(LATEXMKOPT) -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)

debug: 
	$(LATEX) $(LATEXOPT) $(MAIN)

.PHONY: 
	clean force once all 
