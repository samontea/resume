BASE_FILENAME=resume
BAD_FILES=$(addprefix $(BASE_FILENAME), .aux .log .out -blx.bib .run.xml)

all: $(BASE_FILENAME).pdf

cleanup:
	rm -f $(BAD_FILES)

$(BASE_FILENAME).pdf: $(BASE_FILENAME).tex
	pdflatex $(BASE_FILENAME)
	pdflatex $(BASE_FILENAME)
	make cleanup

clean: cleanup
	rm -f $(BASE_FILENAME).pdf
