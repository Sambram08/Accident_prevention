# #!/usr/bin/env bash
# # exit on error
# set -o errexit

# pip install -r requirements.txt

# python manage.py collectstatic --no-input
# python manage.py migrate
# if [[ $CREATE_SUPERUSER ]];
# then
#   python manage.py createsuperuser --no-input --email "$DJANGO_SUPERUSER_EMAIL"
# fi



#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -o errexit  

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt
gdown https://drive.google.com/uc?id=dyEekxHzR0Nyod9Qgn4DGA6tQXfKfGaks -O accidentprediction/model/xgboost_model.pkl
# Apply Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
