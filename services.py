from database import crud

def get_dashboard_stats():
    conn = crud.get_db()
    cursor = conn.cursor(dictionary=True)

    stats = {}

    #Total Applications
    cursor.execute("SELECT COUNT(*) as count FROM applications")
    stats['total_applications'] = cursor.fetchone()['count']

    #Applications by Status
    cursor.execute("""
        SELECT status, COUNT(*) as count
        FROM applications
        GROUP BY status
    """)
    stats['by_status'] = cursor.fetchall()

    cursor.execute("""
        SELECT j.job_title AS 'Job Title',
            c.company_name AS 'Company Name',
            a.interview_date AS 'Interview Date' 
        FROM applications AS a
        JOIN jobs AS j
            ON a.job_id = j.job_id
        JOIN companies as c
            ON j.company_id = c.company_id
        WHERE YEARWEEK(a.interview_date, 1) = YEARWEEK(CURDATE(), 1)
    """)
    stats['interviews_this_week'] = cursor.fetchall()

    conn.close()
    return stats
