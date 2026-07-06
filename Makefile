LATEXMK ?= latexmk
FIGURES := $(wildcard figures/tikz/*.pdf)

.PHONY: all clean

all: main.pdf

main.pdf: main.tex sections/*.tex $(FIGURES)
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error main.tex

clean:
	$(LATEXMK) -C main.tex
