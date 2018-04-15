CMD_SASS=yarn node-sass --source-map=true --output-style=compressed \
	--include-path=./node_modules \
	./src/scss/default.scss ./assets/css/default.css

CMD_TSC=yarn tsc

default: build

build: prepare
	$(CMD_SASS)
	$(CMD_TSC)

watch-sass:
	$(CMD_SASS) --watch

watch-tsc:
	$(CMD_SASS) --watch

.PHONY: install prepare clean

install:
	yarn

prepare:
	mkdir -p ./assets/css ./assets/js

clean:
	find ./assets/js -type f -name '*.js*' -delete
	find ./assets/css -type f -name '*.css*' -delete
