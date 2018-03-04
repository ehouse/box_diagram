ALL_PNG:=$(patsubst %.dot, %.png, $(wildcard *.dot))
ALL_PDF:=$(patsubst %.dot, %.pdf, $(wildcard *.dot))

all: png

png: $(ALL_PNG)

.PHONE: png

pdf: $(ALL_PDF)

.PHONE: pdf

%.png: %.dot
	dot -Tpng $< -o $@

%.pdf: %.dot
	dot -Tpdf $< -o $@

clean:
	rm -f $(wildcard *.pdf) $(wildcard *.png)
