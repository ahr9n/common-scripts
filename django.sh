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
