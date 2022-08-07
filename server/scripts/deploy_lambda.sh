#!/bin/bash

source ../env/bin/activate

pip3 install -r requirements.txt

deactivate

cd ./env/lib/python3.9/site-packages

zip -r ../../../../deploy.zip .

cd ../../../../code/

# anytime you add folders / files that are used in lambda main,
zip -g deploy.zip lambda_main.py   # they need to be added here

aws lambda update-function-code --function-name <REPLACEME_WITH_LAMBDA_NAME> --zip-file fileb://deploy.zip
