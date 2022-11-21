#!/bin/bash

# check
python3 -m django --version

# create a new project (e.g. mysite)
django-admin startproject mysite

# run the development server
cd mysite
python3 manage.py runserver

# change the port (e.g. to 8080)
python3 manage.py runserver 8080

# add another application to the project (e.g. polls)
python3 manage.py startapp polls

# create migrations for the changes
python3 manage.py makemigrations

# create the tables in the database before we can use them
python3 manage.py migrate

# to include another app in migrations (e.g. polls)
python3 manage.py makemigrations polls

# play with API
python3 manage.py shell

# create an admin user
python3 manage.py createsuperuser

# run tests for application polls
python3 manage.py test polls
