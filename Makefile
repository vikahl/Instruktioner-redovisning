make:
	# lualatex Presentation
	lualatex -shell-escape Instruktioner\ för\ redovisning


	# make clean
clean:
	rm -rf  $(TARGET) *.class *.html *.log *.aux *.out *.glo *.glg *.gls *.ist *.xdy *.1 *.toc *.snm *.nav *.vrb *.fls *.out.pyg *.pyg *.fdb_latexmk *.tdo
