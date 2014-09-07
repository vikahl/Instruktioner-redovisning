all:xml
	# Create files
	
	lualatex -shell-escape Instruktioner\ för\ redovisning
	# lualatex -shell-escape Instruktioner\ för\ redovisning
	
xml:
	# rm content/02-redovisning/redovisning.tex

	xsltproc -o content/02-redovisning/redovisning.tex redovisning-xml/redovisning-latex.xsl redovisning-xml/redovisning.xml

clean:
	# make clean
	rm -rf  $(TARGET) *.class *.html *.log *.aux *.out *.glo *.glg *.gls *.ist *.xdy *.1 *.toc *.snm *.nav *.vrb *.fls *.out.pyg *.pyg *.fdb_latexmk *.tdo
