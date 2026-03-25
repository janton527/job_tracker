from flask import Flask, render_template, request, redirect, flash, url_for
import mysql.connector
from database import crud
import os

app = Flask(__name__)
app.secret_key = os.urandom(24)

def get_db():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='Password1!',
        database='job_tracker'
    )

@app.route('/')
@app.route('/index')
@app.route('/dashboard')
def dashboard():
    conn = get_db()
    cursor = conn.cursor(dictionary=True)
    cursor.execute('SELECT COUNT(*) as count FROM applications')
    stats = cursor.fetchone()
    conn.close()
    return render_template('dashboard.html', stats=stats)


@app.route('/applications')
def applications():
    apps = crud.fetch_all('applications')
    return render_template('applications.html', applications=apps)

@app.route('/add_application', methods=["GET", "POST"])
def add_application():
    if request.method == "POST":
        data = {
            "job_id": request.form['job_id'],
            "application_date": request.form['application_date'],
            "status": request.form['status'],
            "resume_version": request.form['resume_version'],
            "notes": request.form['notes'],
            "cover_letter_sent": 1 if request.form.get('cover_letter_sent') else 0
        }

        crud.insert("applications", data)
        flash("Application added!")
        return redirect(url_for('applications'))

    return render_template('application_form.html')

@app.route('/edit_application/<int:id>', methods=["GET", "POST"])
def edit_application(id):
    if request.method == "POST":
        data = {
            "job_id": request.form['job_id'],
            "application_date": request.form['application_date'],
            "status": request.form['status'],
            "resume_version": request.form['resume_version'],
            "cover_letter_sent": 1 if request.form.get('cover_letter_sent') else 0,
            "notes": request.form['notes'],
            "response_date": request.form['response_date'] or None,
            "interview_date": request.form['interview_date'] or None
        }

        crud.update("applications", "application_id", id, data)
        flash("Application updated!")
        return redirect(url_for('applications'))

    app_data = crud.fetch_one("applications", "application_id", id)
    return render_template('application_form.html', application=app_data)

@app.route('/delete_application/<int:id>', methods=["GET", "POST"])
def delete_application(id):
    if request.method == "POST":
        crud.delete("applications", "application_id", id)
        flash("Application deleted!")
        return redirect(url_for('applications'))

    app_data = crud.fetch_one("applications", "application_id", id)
    return render_template('delete_application.html', application=app_data)


@app.route('/jobs')
def jobs():
    jobs = crud.fetch_all('jobs')
    return render_template('jobs.html', jobs=jobs)

@app.route('/add_job', methods=["GET", "POST"])
def add_job():
    if request.method == "POST":
        data = {
            "company_id": request.form['company_id'],
            "job_title": request.form['job_title'],
            "job_description": request.form['job_description'],
            "salary_min": request.form['salary_min'],
            "salary_max": request.form['salary_max'],
            "job_type": request.form['job_type'],
            "posting_url": request.form['posting_url'],
            "date_posted": request.form['date_posted']
        }

        crud.insert("jobs", data)
        flash("Job added!")
        return redirect(url_for('jobs'))

    return render_template('job_form.html')

@app.route('/edit_job/<int:id>', methods=["GET", "POST"])
def edit_job(id):
    if request.method == "POST":
        data = {
            "company_id": request.form['company_id'],
            "job_title": request.form['job_title'],
            "job_description": request.form['job_description'],
            "salary_min": request.form['salary_min'],
            "salary_max": request.form['salary_max'],
            "job_type": request.form['job_type'],
            "posting_url": request.form['posting_url'],
            "date_posted": request.form['date_posted'] or None,
            "is_active": 1 if request.form.get('is_active') else 0
        }

        crud.update("jobs", "job_id", id, data)
        flash("Job updated!")
        return redirect(url_for('jobs'))

    app_data = crud.fetch_one("jobs", "job_id", id)
    return render_template('job_form.html', job=app_data)

@app.route('/delete_job/<int:id>', methods=["GET", "POST"])
def delete_job(id):
    if request.method == "POST":
        crud.delete("jobs", "job_id", id)
        flash("Job deleted!")
        return redirect(url_for('jobs'))

    app_data = crud.fetch_one("jobs", "job_id", id)
    return render_template('delete_job.html', job=app_data)


@app.route('/companies')
def companies():
    apps = crud.fetch_all('companies')
    return render_template('companies.html', companies=apps)

@app.route('/add_company', methods=["GET", "POST"])
def add_company():
    if request.method == "POST":
        data = {
            "company_name": request.form['company_name'],
            "industry": request.form['industry'],
            "website": request.form['website'],
            "city": request.form['city'],
            "state": request.form['state'],
            "notes": request.form['notes']
        }

        crud.insert("companies", data)
        flash("Company added!")
        return redirect(url_for('companies'))

    return render_template('company_form.html')

@app.route('/edit_company/<int:id>', methods=["GET", "POST"])
def edit_company(id):
    if request.method == "POST":
        data = {
            "company_name": request.form['company_name'],
            "industry": request.form['industry'],
            "website": request.form['website'],
            "city": request.form['city'],
            "state": request.form['state'],
            "notes": request.form['notes']
        }

        crud.update("companies", "company_id", id, data)
        flash("Company updated!")
        return redirect(url_for('companies'))

    app_data = crud.fetch_one("companies", "company_id", id)
    return render_template('company_form.html', company=app_data)

@app.route('/delete_company/<int:id>', methods=["GET", "POST"])
def delete_company(id):
    if request.method == "POST": 
        crud.delete("companies", "company_id", id)
        flash("Company deleted!")
        return redirect(url_for('companies'))

    app_data = crud.fetch_one("companies", "company_id", id)
    return render_template('delete_company.html', company=app_data)


if __name__ == '__main__':
    app.run(debug=True)
