# The main latex-file
TEXFILE = main

# Fix reference file and compile source
default: full

full:
	pdflatex $(TEXFILE); \
	biber $(TEXFILE); \
	makeglossaries $(TEXFILE);\
	pdflatex $(TEXFILE);\
	pdflatex $(TEXFILE)
	makeglossaries $(TEXFILE);\
	pdflatex $(TEXFILE);\
	pdflatex $(TEXFILE)


# Removes TeX-output files
clean:
	rm -f *.aux $(TEXFILE).bbl $(TEXFILE).blg *.log *.out $(TEXFILE).toc $(TEXFILE).lot $(TEXFILE).lof $(TEXFILE).glg $(TEXFILE).glo $(TEXFILE).gls $(TEXFILE).acn $(TEXFILE).acr $(TEXFILE).alg $(TEXFILE).xdy $(TEXFILE).loa $(TEXFILE).bcf $(TEXFILE).run.xml 
clean-all:
	rm -f *.aux $(TEXFILE).bbl $(TEXFILE).blg *.log *.out $(TEXFILE).toc $(TEXFILE).lot $(TEXFILE).lof $(TEXFILE).glg $(TEXFILE).glo $(TEXFILE).gls $(TEXFILE).acn $(TEXFILE).acr $(TEXFILE).alg $(TEXFILE).xdy $(TEXFILE).loa $(TEXFILE).bcf $(TEXFILE).run.xml $(TEXFILE).pdf
