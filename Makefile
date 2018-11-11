all: build/recipes.pdf


build/recipes.pdf: FORCE
	latexmk \
		--lualatex \
		--output-directory=build \
		--halt-on-error \
		--interaction=nonstopmode \
		recipes.tex

clean:
	rm -rf build

FORCE:

.PHONY: clean all FORCE
