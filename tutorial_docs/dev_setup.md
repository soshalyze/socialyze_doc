# `socialyze` - Setting Up the Dev Environment

## Required Software

1. Python 3.x
2. Git (for Windows)
3. PostgreSQL 13.1
4. Heroku CLI (current version)

## Database Setup

1. Open `psql` and log in as superuser (usually `postgres` with a password configured at install).
2. Create a new user and database for the Django app (don't forget the semicolons).
    * `CREATE USER socialyze WITH PASSWORD 'socialyze123';`
    * `CREATE DATABASE socialyze WITH OWNER=socialyze;`
3. Exit the console with the `exit` command. You now have a database owned by a user called `socialyze`.

## Clone the Git Repository and add the Heroku Remote

1. Clone the `git` code repo with `git clone https://github.com/soshalyze/socialyze`.
2. `cd` into the `socialyze` directory.
3. Add the Heroku remote repository with `git remote add heroku https://git.heroku.com/soshalyze.git`.

## Create a Python Virtual Environment

1. Inside the `socialyze` code repo, open a command line and run `python -m venv venv`.
2. `cd` into the newly created `venv/Scripts` directory and run the appropriate `activate` script.
3. Your console prompt should have `(venv)` in front of it. Return to the `socialyze` directory.

## Set up App Dependencies and Run the Django App

1. In your virtual environment, run `pip install -r requirements.txt`.
2. Run the migration script with `python manage.py migrate`.
3. Run the Django app with `python manage.py runserver`.
