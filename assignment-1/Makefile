SHELL := /bin/bash

MAIN=answer_sheet
TEXSRC=$(wildcard *.tex) $(wildcard tex/*.tex)
BIBSRC=$(wildcard *.bib)
DIR_BUILD=build
# OPT= --interaction=nonstopmode

all: $(DIR_BUILD)/$(MAIN).pdf

$(DIR_BUILD)/$(MAIN).pdf: $(TEXSRC) $(BIBSRC)
	latexmk -pdf -pdflatex="texfot pdflatex" $(MAIN) -auxdir=$(DIR_BUILD) -outdir=$(DIR_BUILD)

clean:
	rm -rf $(DIR_BUILD)/*

.PHONY: clean all