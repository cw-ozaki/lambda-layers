awscli.zip: aws.patch entrypoint.sh
	mkdir -p .tmp/bin/ .tmp/lib/
	docker run --entrypoint /awscli/entrypoint.sh -v $$PWD:/awscli -v $$PWD/.tmp:/share python:2.7
	cd .tmp && zip -r9 ../awscli.zip ./*

.PHONY: release
release: awscli.zip
	JSON=$$(aws lambda publish-layer-version --layer-name "awscli" --description "Layer to add awscli command to AWS Lambda" --zip-file fileb://awscli.zip); \
		aws lambda add-layer-version-permission --layer-name awscli --version-number `echo "$${JSON}" | jq -r '.Version'` --statement-id `date "+%Y%m%d%H%M%S"` --action lambda:GetLayerVersion --principal '*'

.PHONY: clean
clean:
	-rm -rf .tmp `basename $$PWD`.zip
