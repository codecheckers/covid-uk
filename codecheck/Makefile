## steps:
## make run
## make outputs
## make 


all: codecheck.pdf


codecheck.pdf: davies2020-codecheck.Rmd preamble.sty ../codecheck.yml
	Rscript -e 'rmarkdown::render("$<", "pdf_document")'
	cp davies2020-codecheck.pdf codecheck.pdf

davies2020-codecheck.html: davies2020-codecheck.Rmd ../codecheck.yml
	Rscript -e 'rmarkdown::render("$<")'

.PHONY: run clean

clean:
	rm -fr ../Figures davies2020-codecheck.html outputs

## This takes just a minute or so to re-run outputs

run:
	cd ..; Rscript -e 'rmarkdown::render("Analyze_Results.Rmd")'

