aws.zip: aws.patch entrypoint.sh
	mkdir -p .tmp/bin/ .tmp/lib/
	docker run --entrypoint /awscli/entrypoint.sh -v $$PWD:/awscli -v $$PWD/.tmp:/share python:2.7
	cd .tmp && zip -r9 ../awscli.zip ./*

.PHONY: clean
clean:
	-rm -rf .tmp `basename $$PWD`.zip
