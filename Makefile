# Variables
RM=rm -rf

LATEXMK= \
	latexmk -pdf \
	-pdflatex="pdflatex -interaction=nonstopmode" \
	-use-make

MAKE4HT= \
	make4ht \
	main.tex \
	",charset=utf-8" "-cunihtf -utf8" \
	"" \
	"-interaction=nonstopmode"

# Build Commands
.PHONY: all
all: Main.pdf viewpdf clean
clean-all: clean clean-everything
pdf: Main.pdf

# PDF
Main.pdf: main.tex
	$(LATEXMK) $<
	$(LATEXMK) $<
	$(LATEXMK) $<
viewpdf: Main.pdf
	/usr/bin/google-chrome-stable ./main.pdf

# Cleaning
clean:
	$(RM) *.4tc
	$(RM) *.4ct
	$(RM) *.tmp
	$(RM) *.xref
	$(RM) *.idv
	$(RM) *.lg
	$(RM) *.out.ps
	$(RM) *.bbl
	$(RM) *.bib.bbl
	$(RM) *.bib.blg
	$(RM) *.run.xml
	$(RM) *.lol
	$(RM) *.aux
	$(RM) *.fdb_latexmk
	$(RM) *.synctex.gz
	$(RM) *.log
	$(RM) *.fls
	$(RM) *.toc
clean-everything: clean
	latexmk -CA
	$(RM) *.html
	$(RM) *.css
	$(RM) *.pdf
