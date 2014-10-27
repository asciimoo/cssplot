
all: prepare base full group

prepare: clean
	@mkdir build/
	@echo "[!] build/ directory created"

base:
	@lessc src/cssplot.base.less > build/cssplot.base.css
	@echo "[!] cssplot.base.css generated"

full:
	@lessc src/cssplot.full.less > build/cssplot.full.css
	@echo "[!] cssplot.full.css generated"

group:
	@lessc src/cssplot.group.less > build/cssplot.group.css
	@echo "[!] cssplot.group.css generated"

clean:
	@rm -rf build/

.PHONY: all prepare base full clean
