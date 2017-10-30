OUTPUT_TITLE = cv

pdf: cv.tex
	exec docker run --rm -i --user="$$(id -u):$$(id -g)" --net=none -v "$$PWD":/data blang/latex bash -c "pdflatex $(OUTPUT_TITLE).tex"

.PHONY: clean
clean:
	rm -v $(OUTPUT_TITLE).pdf *.aux *.bbl *.blg *.log *.toc
