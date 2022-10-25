#!/bin/bash -ex
brew install pipenv
# install pipenv

cd pipenv
#enter to pipenv folder

pipenv sync --dev
#install dependencies with pipenv

pipenv run python manage.py migrate
# Run database migrations

pipenv run python manage.py runserver 0.0.0.0:8000 > runserver.log
#run the skeleton application
