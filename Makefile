
all: booklet.pdf Makefile

oos.pdf: oos.tex
	xelatex oos.tex
	xelatex oos.tex

booklet.pdf: booklet.tex oos.pdf 
	pdftex booklet.tex

clean: 
	rm -f *.pdf *.log *.aux