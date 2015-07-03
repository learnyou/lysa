all: en clean

clean:
	rm -rf .lysa

mksandbox:
	mkdir .lysa

en: mksandbox
	cp -rvf en/book/lysa.ltx \
                en/book/appendices/* \
                en/book/chapters/* \
                en/book/code/* \
                en/book/graphs/* \
		en/book/bibliographies/* \
                en/book/images/* \
                en/book/tex/latex-solarized/* \
                .lysa/
	cd .lysa && \
	  pdflatex lysa.ltx && \
	  bibtex lysa && \
	  pdflatex lysa.ltx && \
	  pdflatex lysa.ltx && \
	  cp lysa.pdf ../lysa-en.pdf
	echo "SUCCESSFULLY BUILT lysa-en.pdf"

# I don't know how to build the russian version, so I'll leave that to
# the Russians.
