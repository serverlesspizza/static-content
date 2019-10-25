#!/bin/bash

aws cloudformation create-stack --stack-name 'serverlesspizza-static-content-pipeline' \
	--template-body file://cfn_codepipeline.yml \
	--region eu-west-1 \
	--parameters ParameterKey=GitHubToken,ParameterValue=$AWS_GITHUB_TOKEN \
		ParameterKey=ModuleName,ParameterValue=static-content \
	--capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
	--profile aws-serverlesspizza-devops
