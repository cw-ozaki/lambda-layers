jq.zip:
	mkdir -p .tmp/bin/
	curl -sSL https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 -o .tmp/bin/jq
	cd .tmp && zip -9 ../jq.zip bin/jq

.PHONY: clean
clean:
	-rm -rf .tmp `basename $$PWD`.zip
