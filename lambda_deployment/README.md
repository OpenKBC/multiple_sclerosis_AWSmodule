## AWS module for running the project
* This module supports to run limited function by AWS Lambda. Currently, it is on development phase and it has only one functions with S3 bucket

### Requirements on local PC
```
apt-get install awscli
apt-get install jq
```

## Batch Jobs List
| Name | Description | Main exec file |
|---------|---------|---------|
| sliceColumn | A function performs slicing large matrix to small matrix by using certain sample number | lambda_module.sh |