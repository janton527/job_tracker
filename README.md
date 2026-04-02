# Job Application Tracker

A web application to help track job applications during the job search process. 

## Features
- Track companies and job listings
- Record application submissions
- Manage interview schedules
- Store contact information
- Job Matching

## Technologies
- MySQL Database
- Python with Flask
- HTML/CSS for the web interface

## Setup
- Create Virtual Enviroment using "python3 -m venv [venv_name]"
- Activate Virtual Environment using "source [venv_name]/bin/activate"
- Install Flask and MySQL-connector-python using "pip install flask mysql-connector-python"
- Create job_tracker database using MySQLWorkbench or cmd
- In app.py and database.py, change "[YOUR_PASSWORD]" in the get_db() function to your local instance's password
- create database tables using "mysql -u [username] -p job_tracker < schema.sql"
- Populate database tables with seed data using "mysql -u [username] -p job_tracker < seed.sql"
- Access website using "http://localhost:5000/"

