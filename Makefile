
all: style

style:
	@lessc cssplot.less > cssplot.css
	@echo "[!] cssplot.css generated"

clean:
	@rm -rf *.css

.PHONY: all style clean
