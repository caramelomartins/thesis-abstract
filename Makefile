all: thesis-abstract

thesis-abstract: main.tex
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf --shell-escape main

clean:
	latexmk -CA

publish: thesis-abstract
	cp main.pdf ~/Extended\ Abstract.pdf