#!/bin/bash

# install
curl -sSL https://install.python-poetry.org | python3 -

# test
poetry --version

# update
poetry self update

# create a new project
poetry new poetry-demo

# initialize a pre-existing project
cd pre-existing-project
poetry init

# add/remove dependencies (e.g. pendulum)
poetry add pendulum
poetry add git+https://github.com/sdispater/pendulum.git
poetry remove pendulum

# list all the available packages
poetry show

# run script.py by poetry
poetry run python3 script.py

# if you have command line tools (e.g. pytest or black)
poetry run black

# activate the virtual environment
poetry shell

# to deactivate and exit this new shell type exit, and to deactivate only use deactivate

# install all the defined dependencies for your project and add the lock file
poetry install

# install the dependencies only
poetry install --no-root

# Updating dependencies to their latest versions; poetry.lock file prevents you from automatically getting the latest versions of your dependencies
# To update to the latest versions; this will fetch the latest matching versions and update the lock file
# Equivalent to deleting the poetry.lock file and running install again :D
poetry update

# synchronizing dependencies to ensure the locked dependencies are the only ones present in the environment, removing anything that is not necessary
poetry install --sync

# validate the structure of the pyproject.toml file
poetry check

# export the lock file to other formats
poetry export -f requirements.txt --output requirements.txt

# display all the available Poetry commands
poetry list
