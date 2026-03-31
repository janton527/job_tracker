from flask import Flask, render_template, request, redirect, flash, url_for
import mysql.connector
from database import crud
from services import get_dashboard_stats
import os
import json

app = Flask(__name__)
app.secret_key = os.urandom(24)

VALID_JOB_TYPES = ['Full-time', 'Part-time', 'Contract', 'Internship']
VALID_APP_STATUS = ['Applied', 'Screening', 'Interview', 'Offer', 'Rejected', 'Withdrawn']

def get_db():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='root',
        database='job_tracker'
    )

@app.route('/')
@app.route('/index')
@app.route('/dashboard')
def dashboard():
    stats = get_dashboard_stats()
    return render_template('dashboard.html', stats=stats)


#----------------------------Applications Table------------------------------------
@app.route('/applications')
def applications():
    apps = crud.fetch_all('applications')

    for app in apps:
        if app.get('interview_data'):
            if isinstance(app['interview_data'], str):
                app['interview_data'] = json.loads(app['interview_data'])
        else:
            app['interview_data'] = {
                    "response_date": "",
                    "interview_date": "",
                    "interview_rounds": "",
                    "interviewers": "", 
                    "technical_questions": "",
                    "feedback": "",
                    "next_steps": ""
            }


    return render_template('applications.html', applications=apps)

@app.route('/add_application', methods=["GET", "POST"])
def add_application():
    if request.method == "POST":
        app_status = request.form.get('status')

        if app_status not in VALID_APP_STATUS:
            flash(f"Invalid status: {status}. Must be one of {', '.join(VALID_APP_STATUS)}")
            return render_template('application_form.html', app=request.form)

        data = {
            "job_id": request.form['job_id'],
            "application_date": request.form['application_date'],
            "status": request.form['status'],
            "resume_version": request.form['resume_version'],
            "cover_letter_sent": 1 if request.form.get('cover_letter_sent') else 0
        }

        crud.insert("applications", data)
        flash("Application added!")
        return redirect(url_for('applications'))

    return render_template('application_form.html', valid_app_status=VALID_APP_STATUS)

@app.route('/edit_application/<int:id>', methods=["GET", "POST"])
def edit_application(id):
    if request.method == "POST":
        interview_data = {
            "response_date": request.form.get("response_date") or None,
            "interview_date": request.form.get("interview_date") or None,
            "interview_rounds": request.form.get("interview_rounds") or None,
            "interviewers": request.form.get("interviewers") or None,
            "technical_questions": request.form.get("technical_questions") or None,
            "feedback": request.form.get("feedback") or None,
            "next_steps": request.form.get("next_steps") or None
        }

        data = {
            "job_id": request.form['job_id'],
            "application_date": request.form['application_date'],
            "status": request.form['status'],
            "resume_version": request.form['resume_version'],
            "cover_letter_sent": 1 if request.form.get('cover_letter_sent') else 0,
            "interview_data": json.dumps(interview_data)
        }

        crud.update("applications", "application_id", id, data)
        flash("Application updated!")
        return redirect(url_for('applications'))

    app_data = crud.fetch_one("applications", "application_id", id)
    if app_data and app_data.get("interview_data"):
        app_data["interview_data"] = json.loads(app_data["interview_data"])

    return render_template('application_form.html', application=app_data, valid_app_status=VALID_APP_STATUS)

@app.route('/delete_application/<int:id>', methods=["GET", "POST"])
def delete_application(id):
    if request.method == "POST":
        crud.delete("applications", "application_id", id)
        flash("Application deleted!")
        return redirect(url_for('applications'))

    app_data = crud.fetch_one("applications", "application_id", id)
    if app_data and app_data.get("interview_data"):
        app_data["interview_data"] = json.loads(app_data["interview_data"])

    return render_template('delete_application.html', application=app_data)

#----------------------------Jobs Table------------------------------------
@app.route('/jobs')
def jobs():
    jobs = crud.fetch_all('jobs')

    for job in jobs:
        if job.get('requirements'):
            if isinstance(job['requirements'], str):
                job['requirements'] = json.loads(job['requirements'])

            if isinstance(job['requirements'].get('required_skills'), str):
                job['requirements']['required_skills'] = [
                    s.strip() for s in job['requirements']['required_skills'].split(',') if s.strip()
                ]
            if isinstance(job['requirements'].get('preferred_skills'), str):
                job['requirements']['preferred_skills'] = [
                    s.strip() for s in job['requirements']['preferred_skills'].split(',') if s.strip()
                ]
        else:
            job['requirements'] = {
                "required_skills": [],
                "preferred_skills": [], 
                "education": "", 
                "experience_years": "",
                "remote_option": 0
            }

    return render_template('jobs.html', jobs=jobs)

@app.route('/add_job', methods=["GET", "POST"])
def add_job():
    if request.method == "POST":
        required_skills = request.form.get('required_skills', '')
        preferred_skills = request.form.get('preferred_skills', '')
        job_type = request.form.get('job_type')

        if job_type not in VALID_JOB_TYPES:
            flash(f"Invalid job type: {job_type}. Must be one of {', '.join(VALID_JOB_TYPES)}")
            return render_template('job_form.html', job=request.form)

        requirements = {
            "required_skills": [skill.strip() for skill in required_skills.split(',') if skill.strip()] or None,
            "preferred_skills": [skill.strip() for skill in preferred_skills.split(',') if skill.strip()] or None,
            "education": request.form.get('education') or None,
            "experience_years": request.form.get('experience_years') or None,
            "remote_option": 1 if request.form.get('remote_option') else 0
        }

        data = {
            "company_id": request.form['company_id'],
            "job_title": request.form['job_title'],
            "job_description": request.form['job_description'],
            "salary_min": request.form['salary_min'],
            "salary_max": request.form['salary_max'],
            "job_type": request.form['job_type'],
            "job_url": request.form['job_url'],
            "date_posted": request.form['date_posted'],
            "is_active": 1,
            "requirements": json.dumps(requirements)
        }

        crud.insert("jobs", data)
        flash("Job added!")
        return redirect(url_for('jobs'))

    return render_template('job_form.html', valid_job_types=VALID_JOB_TYPES)

@app.route('/edit_job/<int:id>', methods=["GET", "POST"])
def edit_job(id):
    if request.method == "POST":
        required_skills = request.form.get('required_skills', '')
        preferred_skills = request.form.get('preferred_skills', '')

        requirements = {
            "required_skills": [skill.strip() for skill in required_skills.split(',') if skill.strip()] or None,
            "preferred_skills": [skill.strip() for skill in preferred_skills.split(',') if skill.strip()] or None,
            "education": request.form.get('education') or None,
            "experience_years": request.form.get('experience_years') or None,
            "remote_option": 1 if request.form.get('remote_option') else 0
        }

        data = {
            "company_id": request.form['company_id'],
            "job_title": request.form['job_title'],
            "job_description": request.form['job_description'],
            "salary_min": request.form['salary_min'],
            "salary_max": request.form['salary_max'],
            "job_type": request.form['job_type'],
            "job_url": request.form['job_url'],
            "date_posted": request.form['date_posted'] or None,
            "is_active": 1 if request.form.get('is_active') else 0,
            "requirements": json.dumps(requirements)
        }


        crud.update("jobs", "job_id", id, data)
        flash("Job updated!")
        return redirect(url_for('jobs'))

    job_data = crud.fetch_one("jobs", "job_id", id)
    if job_data and job_data.get("requirements"):
        job_data["requirements"] = json.loads(job_data["requirements"])

    return render_template('job_form.html', job=job_data, valid_job_types=VALID_JOB_TYPES)

@app.route('/delete_job/<int:id>', methods=["GET", "POST"])
def delete_job(id):
    if request.method == "POST":
        crud.delete("jobs", "job_id", id)
        flash("Job deleted!")
        return redirect(url_for('jobs'))

    job_data = crud.fetch_one("jobs", "job_id", id)
    if job_data and job_data.get("requirements"):
        job_data["requirements"] = json.loads(job_data["requirements"])

    return render_template('delete_job.html', job=job_data)


#----------------------------Companies Table------------------------------------
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


#----------------------------Contacts Table------------------------------------
@app.route('/contacts')
def contacts():
    apps = crud.fetch_all('contacts')
    return render_template('contacts.html', contacts=apps)

@app.route('/add_contact', methods=["GET", "POST"])
def add_contact():
    if request.method == "POST":
        data = {
            "company_id": request.form['company_id'],
            "contact_name": request.form['contact_name'],
            "email": request.form['email'],
            "phone": request.form['phone'],
            "job_title": request.form['job_title'],
            "linkedin_url": request.form['linkedin_url'],
            "notes": request.form['notes']
        }

        crud.insert('contacts', data)
        flash("Contact added!")
        return redirect(url_for('contacts'))

    return render_template('contact_form.html')

@app.route('/edit_contact/<int:id>', methods=["GET", "POST"])
def edit_contact(id):
    if request.method == "POST": 
        data = {
            "company_id": request.form['company_id'],
            "contact_name": request.form['contact_name'],
            "email": request.form['email'],
            "phone": request.form['phone'],
            "job_title": request.form['job_title'],
            "linkedin_url": request.form['linkedin_url'],
            "notes": request.form['notes']
        }

        crud.update("contacts", "contact_id", id, data)
        flash("Contact added!")
        return redirect(url_for('contacts'))

    app_data = crud.fetch_one("contacts", "contact_id", id)
    return render_template('contact_form.html', contact=app_data)

@app.route('/delete_contact/<int:id>', methods=["GET", "POST"])
def delete_contact(id):
    if request.method == "POST": 
        crud.delete("contacts", "contact_id", id)
        flash("Contact Deleted")
        return redirect(url_for('contacts'))

    app_data = crud.fetch_one("contacts", "contact_id", id)
    return render_template('delete_contact.html', contact=app_data)


@app.route('/job_match', methods=["GET", "POST"])
def job_match():
    matched_jobs = []
    user_skills = ""

    if request.method == "POST":
        user_skills = request.form.get('user_skills', '')
        user_skills_list = [skill.strip().lower() for skill in user_skills.split(', ') if skill.strip()]

        conn = get_db()
        cursor = conn.cursor(dictionary=True)

        cursor.execute("""
            SELECT jobs.*, companies.company_name
            FROM jobs
            LEFT JOIN companies on jobs.company_id = companies.company_id
        """)
        jobs = cursor.fetchall()
        conn.close()

        for job in jobs: 
            requirements = json.loads(job['requirements']) if job.get('requirements') else {}
            required_skills = requirements.get('required_skills') or []
            required_skills_lower = [s.lower() for s in required_skills]

            if required_skills_lower:
                matched_skills = [s for s in user_skills_list if s in required_skills_lower]
                missing_skills = [s for s in required_skills if s.lower() not in user_skills_list]

                match_percentage = round(len(matched_skills) / len(required_skills_lower) * 100)

                if match_percentage > 0:  
                    matched_jobs.append({
                        'job_title': job['job_title'],
                        'company': job['company_name'],
                        'match_percentage': match_percentage,
                        'matched_count': len(matched_skills),
                        'total_skills': len(required_skills_lower),
                        'missing_skills': missing_skills
                    })

        # Sort jobs by match percentage descending
        matched_jobs.sort(key=lambda x: x['match_percentage'], reverse=True)

    return render_template(
        'job_match.html',
        matched_jobs=matched_jobs,
        user_skills=user_skills
        )


if __name__ == '__main__':
    app.run(debug=True)
