ALL_PNG:=$(patsubst src/%.dot, dst/%.png, $(wildcard src/*.dot))
ALL_PDF:=$(patsubst src/%.dot, dst/%.pdf, $(wildcard src/*.dot))

all: png

png: $(ALL_PNG)

.PHONE: png

pdf: $(ALL_PDF)

.PHONE: pdf

dst/%.png: src/%.dot
	dot -Tpng $< -o $@

dst/%.pdf: src/%.dot
	dot -Tpdf $< -o $@

clean:
	rm -f $(wildcard dst/*.pdf) $(wildcard dst/*.png)
