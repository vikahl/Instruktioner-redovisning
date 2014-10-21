all:xml
	# Create files
	
	lualatex -shell-escape Instruktioner\ för\ redovisning
	# lualatex -shell-escape Instruktioner\ för\ redovisning
	
xml:
	xsltproc -o content/02-redovisning/redovisning.tex data-xml/redovisning-latex.xsl data-xml/redovisning.xml
	xsltproc -o content/03-kontoplan/kontoplan-kontoplan.tex data-xml/kontoplan-latex.xsl data-xml/kontoplan.xml
	
	
clean:
	# make clean
	rm -rf  $(TARGET) *.class *.html *.log *.aux *.out *.glo *.glg *.gls *.ist *.xdy *.1 *.toc *.snm *.nav *.vrb *.fls *.out.pyg *.pyg *.fdb_latexmk *.tdo

	rm content/02-redovisning/redovisning.tex
	rm content/03-kontoplan/kontoplan-kontoplan.tex