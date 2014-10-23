
all: less

less:
	@lessc cssplot.less > cssplot.css
	@echo "[!] cssplot.css generated using less precompiler"

sass:
	@sass -t expanded cssplot.sass > cssplot.css
	@echo "[!] cssplot.css generated using sass precompiler"

clean:
	@rm -rf *.css

.PHONY: all less sass clean
