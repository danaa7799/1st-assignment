#!/bin/bash -ex
brew install pipenv
pipenv sync --dev
python manage.py runserver 0.0.0.0:8000 > runserver.log 2>&1 &
 
