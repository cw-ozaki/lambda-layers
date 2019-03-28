jq.zip:
	mkdir -p .tmp/bin/
	curl -sSL https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 -o .tmp/bin/jq
	cd .tmp && zip -9 ../jq.zip bin/jq

.PHONY: release
release: jq.zip
	JSON=$$(aws lambda publish-layer-version --layer-name "jq" --description "Layer to add jq command to AWS Lambda" --zip-file fileb://jq.zip); \
		aws lambda add-layer-version-permission --layer-name jq --version-number `echo "$${JSON}" | jq -r '.Version'` --statement-id `date "+%Y%m%d%H%M%S"` --action lambda:GetLayerVersion --principal '*'

.PHONY: clean
clean:
	-rm -rf .tmp `basename $$PWD`.zip
