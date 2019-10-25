#!/bin/bash

aws cloudformation delete-stack 
    --stack-name 'serverlesspizza-static-content-pipeline' 
    --region eu-west-1
    --profile aws-serverlesspizza-devops
