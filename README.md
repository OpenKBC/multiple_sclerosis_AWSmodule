# Multiple Sclerosis AWS module
Welcome to AWS launch module for MS analysis and pipelines, you can do your project analysis and data processing in cloud comute setting with this repo. This repository contains only AWS module for MS project in OpenKBC. Current contents are EC2, Lambda, SageMaker and Batch. More services are going to be added on here.

### Requirements on local PC
* **AWS credential** is required and please contact to admin or members to get it.
* To execute module bash code, you have to install awscli and jq in your local computer
```
apt-get install awscli
apt-get install jq
```

## Modules List
| Name | Description | Main exec file |
|---------|---------|---------|
| ec2_deployment | Module for EC2 auto-deployment | aws_module.sh or ec2_cloudformation_launcher.sh |
| sageMaker_deployment | Module for sageMaker auto-deployment | sagemaker_module.sh |
| lambda_deployment | Module for AWS lambda function creation and invoke | lambda_module.sh |
| batch_deployment | Module for AWS Batch work (Developing) | batch_module.sh |


#### Current detail map
![overview1](../README_resource/aws_detail.png)

#### Full AWS detail map
![overview2](../README_resource/aws_detail_full.png)
