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
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    if request.method == "POST":
        cursor.execute("DELETE FROM applications WHERE application_id=%s", (id,))
        conn.commit()
        conn.close()

        flash("Application deleted successfully")
        return redirect(url_for('applications'))

    cursor.execute("SELECT * FROM applications WHERE application_id=%s", (id,))
    application = cursor.fetchone()
    conn.close()

    return render_template('delete_application.html', application=application)



if __name__ == '__main__':
    app.run(debug=True)
