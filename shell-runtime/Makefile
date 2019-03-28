shell-runtime.zip: bootstrap
	zip -9 `basename $$PWD`.zip bootstrap

.PHONY: release
release: shell-runtime.zip
	JSON=$$(aws lambda publish-layer-version --layer-name "shell-runtime" --description "Runtime for running Shell Script on AWS Lambda" --zip-file fileb://shell-runtime.zip); \
		aws lambda add-layer-version-permission --layer-name shell-runtime --version-number `echo "$${JSON}" | jq -r '.Version'` --statement-id `date "+%Y%m%d%H%M%S"` --action lambda:GetLayerVersion --principal '*'

.PHONY: clean
clean:
	-rm -rf `basename $$PWD`.zip
