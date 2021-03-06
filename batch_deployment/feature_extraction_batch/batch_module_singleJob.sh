#!/bin/bash

## Need to push job docker images before running this module, this module is an example for how to run single job for AWS batch.

# echo "Creating EFS to share files.."


echo "Creating compute environment.."
aws batch create-compute-environment --compute-environment-name feature-ext-pipeline-env \
--type MANAGED --compute-resources type=FARGATE,maxvCpus=8,securityGroupIds=sg-08946d1b26a30d376,subnets=[subnet-c6bdede9,subnet-23a0b868]

sleep 5

echo "Creating job queue.."
aws batch create-job-queue --job-queue-name feature-ext-pipeline-queue --compute-environment-order order=1,computeEnvironment=feature-ext-pipeline-env --priority 100

sleep 5

echo "Creating job.."
aws batch register-job-definition --job-definition-name feature-ext-pipeline-job --platform-capabilities FARGATE \
--type container --container-properties file://container_configure.json

sleep 5

echo "Submit.."
aws batch submit-job --cli-input-json file://submit_configure.json > job.submitted

sleep 2

echo "Job has been submitted and go to console for checking further status.."