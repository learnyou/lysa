all: en clean

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

# I don't know how to build the russian version, so I'll leave that to
# the Russians.
