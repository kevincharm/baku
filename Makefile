default: build

build: prepare
	yarn node-sass -r ./src/scss --output ./assets/css
	yarn tsc

.PHONY: install prepare clean

install:
	yarn

prepare:
	mkdir -p ./assets/css ./assets/js

clean:
	find . -type f -name '*.js' -name '*.css' -delete
