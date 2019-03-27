# jq

Layer to add jq command to AWS Lambda.

## Get Started

```bash
$ curl -sSL https://github.com/cw-ozaki/lambda-layers/releases/download/jq%2F0.0.1/jq.zip | aws lambda publish-layer-version --layer-name "shell-runtime" --description "Runtime for running Shell Script on AWS Lambda" --zip-file fileb:///dev/stdin
{
    "Content": {
        "Location": "https://awslambda-ap-ne-1-layers.s3.ap-northeast-1.amazonaws.com/snapshots/xxxx/jq-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx?versionId=xxxx&X-Amz-Security-Token=xxxx&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20190327T062031Z&X-Amz-SignedHeaders=host&X-Amz-Expires=600&X-Amz-Credential=xxxx&X-Amz-Signature=xxxx",
        "CodeSha256": "F2r+ICJ9/cwe1MIgtVBFdw33yeKhgbn2sEMzVnWhWH4=",
        "CodeSize": 501
    },
    "LayerArn": "arn:aws:lambda:ap-northeast-1:xxxx:layer:jq",
    "LayerVersionArn": "arn:aws:lambda:ap-northeast-1:xxxx:layer:jq:1",
    "Description": "Layer to add jq command to AWS Lambda",
    "CreatedDate": "2019-03-27T06:20:34.947+0000",
    "Version": 2
}
$ aws lambda create-function ... --layers arn:aws:lambda:ap-northeast-1:xxxx:layer:jq:1
```
