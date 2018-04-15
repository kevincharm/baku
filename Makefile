default: build

build: prepare
	yarn node-sass --source-map=true --output-style=compressed \
		--recursive --include-path=./node_modules \
		--output ./assets/css ./src/scss
	yarn tsc

.PHONY: install prepare clean

install:
	yarn

prepare:
	mkdir -p ./assets/css ./assets/js

clean:
	find . -type f -name '*.js' -name '*.css' -delete
