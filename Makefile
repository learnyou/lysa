all: en-ebook en-print clean

clean:
	rm -rf .lysa

mksandbox:
	mkdir -p .lysa

en: mksandbox
	cp -rvf en/lysa.ltx \
                en/appendices/* \
                en/chapters/* \
                en/code/* \
                en/graphs/* \
	        en/bibliographies/* \
                en/images/* \
                en/tex/latex-solarized/* \
                .lysa/
	cd .lysa && \
	  latexmk -pdf lysa.ltx && \
	  cp lysa.pdf ../lysa-en.pdf
	@echo "SUCCESSFULLY BUILT lysa-en.pdf"

en-ebook: mksandbox
	cp -rvf en-memoir/* \
                .lysa/
	cd .lysa && \
	  cp lysa.tex ly.tex && \
	  cat include/ebook.tex > lysa.tex && \
	  cat ly.tex >> lysa.tex && \
	  ./version > version.tex && \
	  latexmk -pdf lysa.tex && \
	  cp lysa.pdf ../lysa-en-ebook.pdf
	@echo "SUCCESSFULLY BUILT lysa-en-ebook.pdf"

en-print: mksandbox
	cp -rvf en-memoir/* \
                .lysa/
	cd .lysa && \
	  cp lysa.tex ly.tex && \
	  cat include/print.tex > lysa.tex && \
	  cat ly.tex >> lysa.tex && \
	  ./version > version.tex && \
	  latexmk -pdf lysa.tex && \
	  cp lysa.pdf ../lysa-en-print.pdf
	@echo "SUCCESSFULLY BUILT lysa-en-print.pdf"


# I don't know how to build the russian version, so I'll leave that to
# the Russians.
