#!/bin/bash
uuid=$(uuidgen)
echo "UUID generated $uuid"
echo "----------------------"
echo $WORKFLOW_TEMPLATE_JSON | sed "s/_JOB_EXECUTION_UUID_/$uuid/g" > workflow.json
echo "json file created"
echo "----------------------"
kubectl create -f workflow.json