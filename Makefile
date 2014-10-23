
all: base full

base:
	@lessc cssplot.base.less > cssplot.base.css
	@echo "[!] cssplot.base.css generated"

full:
	@lessc cssplot.full.less > cssplot.full.css
	@echo "[!] cssplot.full.css generated"

clean:
	@rm -rf *.css

.PHONY: all base full clean
