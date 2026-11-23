# The main latex-file
TEXFILE = main

# Python virtual environment
VENV = $(HOME)/Downloads/ssp-minted-print/.env

# Make the virtual environment available to all commands
export PATH := $(VENV)/bin:$(PATH)

# Fix reference file and compile source
default: full

full:
	pdflatex -synctex=1 --shell-escape $(TEXFILE); \
	biber $(TEXFILE); \
	makeglossaries $(TEXFILE);\
	pdflatex -synctex=1 --shell-escape $(TEXFILE);\
	pdflatex -synctex=1 --shell-escape $(TEXFILE)
	makeglossaries $(TEXFILE);\
	pdflatex -synctex=1 --shell-escape $(TEXFILE);\
	pdflatex -synctex=1 --shell-escape $(TEXFILE);\
	pdflatex -synctex=1 --shell-escape \
		"\def\FINALPDF{1}\input{$(TEXFILE)}"

# Removes TeX-output files
clean:
	rm -f *.aux $(TEXFILE).bbl $(TEXFILE).blg *.log *.out $(TEXFILE).toc $(TEXFILE).lot $(TEXFILE).lof $(TEXFILE).glg $(TEXFILE).glo $(TEXFILE).gls *.glsdefs $(TEXFILE).acn $(TEXFILE).acr $(TEXFILE).alg $(TEXFILE).xdy $(TEXFILE).loa $(TEXFILE).bcf $(TEXFILE).run.xml *.message.minted *.mw 
	rm -rf _minted
clean-all:
	rm -f *.aux $(TEXFILE).bbl $(TEXFILE).blg *.log *.out $(TEXFILE).toc $(TEXFILE).lot $(TEXFILE).lof $(TEXFILE).glg $(TEXFILE).glo $(TEXFILE).gls *.glsdefs $(TEXFILE).acn $(TEXFILE).acr $(TEXFILE).alg $(TEXFILE).xdy $(TEXFILE).loa $(TEXFILE).bcf $(TEXFILE).run.xml *.message.minted *.mw $(TEXFILE).pdf
	rm -rf _minted