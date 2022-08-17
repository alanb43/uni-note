#!/bin/bash

#### NOTE: FOR THIS SCRIPT TO WORK, MUST PRESENTLY BE IN /server DIRECTORY!!!!
####        MUST ALSO HAVE A VIRTUAL ENV (/env)

source env/bin/activate

pip3 install -r requirements.txt

deactivate

cd env/lib/python3.9/site-packages

zip -r ../../../../deploy.zip .

cd ../../../../

zip -g deploy.zip lambda_main.py

aws lambda update-function-code --function-name uni-note --zip-file fileb://deploy.zip
