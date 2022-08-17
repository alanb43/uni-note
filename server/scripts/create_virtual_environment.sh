#!/bin/bash

python3 -m venv env # create virtual environment named 'env'

pip3 install -r requirements.txt # install packages you need within your environment

source env/bin/activate # activate the environment

# HINT: if you ever need to run "pip3 install <some package>", you should just add the 
#   package to the requirements file, and run "pip3 install -r requirements.txt"
