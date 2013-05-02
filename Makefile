mainfile 	= emacs_rocks
mainfile_tex	= $(mainfile).tex
mainfile_pdf	= $(mainfile).pdf

.PHONY: distclean clean pdf

pdf: $(mainfile_tex)
	@pdflatex $(mainfile_tex)

distclean: clean
	@rm -f *.pdf
clean:
	@rm -f *.aux *.log *.out
