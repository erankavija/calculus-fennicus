CALCULUS = "calculus"
compile:
	latex ${CALCULUS}.tex
	latex ${CALCULUS}.tex
	sed -i 's/\\contentsline {subsection}/\\subcon/' ${CALCULUS}.toc
	makeindex ${CALCULUS}.idx
	latex ${CALCULUS}.tex
	dvips ${CALCULUS}.dvi
	ps2pdf ${CALCULUS}.ps

.PHONY: clean
clean:
	rm -f **/*.aux
	rm -f *.aux
	rm -f *.idx
	rm -f *.ilg
	rm -f *.log
	rm -f *.ind
	rm -f *.out
	rm -f *.toc
	rm -f *.dvi
	rm -f *.ps
