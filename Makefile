LATEXMK = latexmk

build:
	$(LATEXMK) 

clean:
	$(LATEXMK) -silent -c

.PHONY: build clean

