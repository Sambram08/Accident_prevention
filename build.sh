#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Create directory for model if it doesn't exist
mkdir -p accidentprediction/model/

# Download the model file from Google Drive
# Option 1: Using direct download link (if you have one)
# curl -L "YOUR_DIRECT_DOWNLOAD_LINK" -o accidentprediction/model/xgboost_model.pkl

# Option 2: Using gdown with correct file ID
gdown https://drive.google.com/uc?id=dyEekxHzR0Nyod9Qgn4DGA6tQXfKfGaks -O accidentprediction/model/xgboost_model.pkl --no-cookies

# Apply migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput